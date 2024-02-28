
<h2>Sleep Issues</h2>
<p>If you encounter isssues with the system not entering sleep mode or not waking from sleep check the following settings in the bios menu.</p>
<ul>
    <li>
        Sleep mode currently does not work under Linux on any bios version above 310, you can downgrade the bios version if necessary, download the 310 bios from <a
herf="https://rog.asus.com/us/laptops/rog-zephyrus/rog-zephyrus-g14-2023-series/helpdesk_bios/">Asus</a>
and extract the zip file to "/boot/efi" so it can be accessed in the bios menu then go through the flash process.
    </li>
    <li>
        Make sure "Asus ErP" is disabled in the bios menu
    </li>
</ul>
        


<h2>asusctl scripts</h2>
<h4><em>kb.rgb-random.sh</em></h4> Sets a random color for the keyboard backlight.
<h4><em>pwr.cycle.sh</em></h4> Cycle through power profiles with notification.
<br>
<br>

>These scripts should work on any asus laptop that asusctl supports, pwr.cycle also requires the notify-send command.
