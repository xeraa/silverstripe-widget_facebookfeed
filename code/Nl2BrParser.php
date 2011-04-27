<?php


/**
 * Custom class to replace newlines with (html) breaks.
 *
 * @package widget_facebookfeed
 */
class Nl2BrParser extends TextParser {


	/**
	 * Parser for the nl2br function.
	 *
	 * @return String HTML escaped string, but all newlines are replaced with <br>
	 */
	public function parse(){
		return nl2br(htmlentities($this->content, ENT_NOQUOTES, "UTF-8"));
	}


}