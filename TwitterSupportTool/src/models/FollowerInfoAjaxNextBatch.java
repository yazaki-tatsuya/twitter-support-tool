package models;

public class FollowerInfoAjaxNextBatch {
	private long[] next_ids = null;
	private long next_cursor = 0L;

	public void setNextIds(long[] next_ids) {
		this.next_ids = next_ids;
	}
	public void setNextCursor(long next_cursor) {
		this.next_cursor = next_cursor;
	}
	
	public long[] getNextIds() {
		return this.next_ids;
	}
	public long getNextCursor() {
		return this.next_cursor;
	}
}