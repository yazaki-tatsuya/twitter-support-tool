function fetchFollower() {

    /* 古い情報をクリア＆フォロワー数取得 */
	var followercount = 0;
	$.get('follower_search_remove'
			,function(responseText) {
				followercount = responseText;
				console.log("### 2: Get the follower count : "+followercount);
			});
	
	/* 検索対象のユーザ名取得 */
	var name = $('#searchUserKey').val();
	console.log("### 3: Get the name of serach key : "+name+" follower="+followercount);

	var table = "<table border=\"1\" width=\"1030\" ><tr>";
	table += "<th width=\"30\">No.</th>";
	table += "<th width=\"200\">ID</th>"
	table += "<th width=\"200\">ユーザーID</th>"
	table += "<th width=\"100\">フォロワー数</th>"
	table += "<th width=\"500\">ユーザー名</th></tr>"
	
	/* ユーザのフォロワー数だけ繰り返し取得 */
    var counter = 0;
	function nextAjax(i) {
		console.log("### 4: Loop process : "+counter+" target: "+name+" i="+i);
		$.get('follower_search2'				
				,{searchUser:name,Number:i,Total:followercount}
				,function(responseText) {
					table += responseText;
					counter +=1;
					console.log(">>>>>>"+counter);
					$('#ajaxGetUserServletResponse').html(table);
					console.log("========="+counter+" @@@@@"+followercount);
					if(counter<followercount){
						  nextAjax(counter);
					}
		            	            
				}
			);
		
	}
	nextAjax(counter);
    /*
    var counter = 0;
	for(i=0;i<50;i++){
		$.get('follower_search2'
			,{searchUser:name,Number:counter}
			,function(responseText) {
				table += responseText;
				console.log(table);
	            $('#ajaxGetUserServletResponse').html(table);   	            
			}
		);
		counter +=1;
	}
	*/
}
