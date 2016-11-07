
## Debugging

* First learn where the PHP log files are being written to.  This location is specifed in the 'PHP Info' page that's built-in to default PHP installations.

* Create a 'REDCap PHP Info' php file that displays the REDCap constants (eg, file locations).

    ```php
    <?php
    include
    redcap_info()
    ?>
    ```

* Start with a basic php file that has a lot of scaffolding that will help guide you as you build a more complicated page.  It writes basic info to the console.

## Hooks

* Example of conditional logic to control the survey queue when each participant is sent a ton of different surveys longitudinally.
