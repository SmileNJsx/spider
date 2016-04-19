package spider.main;

import java.io.IOException;
import java.sql.SQLException;

import org.apache.lucene.queryparser.classic.ParseException;

import spider.index.IndexFiles;
import spider.subject.SpiderContainer;

public class Main {
	//TODO MOD SPIDER & INDEX & SEARCH
	@SuppressWarnings("unused")
	public static void main(String args[]) throws IOException, ParseException, SQLException, InterruptedException
	{
	
		IndexFiles index = new IndexFiles(true);
		
		SpiderContainer spiderContainer = new SpiderContainer();
		spiderContainer.retrivePageAndHtmlParser();

	}
}

