<?php

/**
 * @group Controller
 */

class IndexControllerTest extends CIUnit_TestCase
{
    public function setUp()
    {
        // Set the tested controller
        $this->CI = set_controller('index');
    }
    
    public function testIndex() {
        // Call the controllers method
        $this->CI->index();

        // Fetch the buffered output
        $out = output();

        // Check if the content is OK
        $this->assertSame(0, preg_match('/(error|notice)/i', $out));

        //Check if content has Nudge string
        $this->assertNotEquals(FALSE, strpos($out, 'Nudge'));
    }

  
}