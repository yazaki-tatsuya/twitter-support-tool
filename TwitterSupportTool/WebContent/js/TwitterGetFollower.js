$(document).ready(function() {
    $('#searchUserKey').blur(function(event) {
        /* ユーザIDを取得 */
    	var name = $('#searchUserKey').val();
    	var table = "<table border=\"1\" width=\"1030\" ><tr>";
    	table += "<th width=\"30\">No.</th>";
    	table += "<th width=\"200\">ID</th>"
    	table += "<th width=\"200\">ユーザーID</th>"
    	table += "<th width=\"100\">フォロワー数</th>"
    	table += "<th width=\"500\">ユーザー名</th></tr>"
    	/* ユーザのフォロワーを取得 */
        console.log("%%%%%%%%%%%%"+name+" ((((((((((((((")
    	/* ユーザのフォロワー数だけ繰り返し取得 */
        var counter = 0;
    	for(i=0;i<50;i++){
    		console.log("LLLLLLLLLLLLLL:"+i);
    		var request = $.ajax({type:"GET"
    				,url:'follower_search2'
        			,data:{searchUser:name,Number:counter}
        			,async: true
    				,success: function(responseText) {
        				table += responseText;
        	            $('#ajaxGetUserServletResponse').html(table);
        			}
    		})
    		
    		/*$.get('follower_search2'
    			,{searchUser:name,Number:counter}
    			,function(responseText) {
    				table += responseText;
    				console.log(table);
    				setTimeout(function(){},1000);
    	            $('#ajaxGetUserServletResponse').html(table);
    			}
    		);*/
    		counter +=1;    		
    	}    	
    });
});
