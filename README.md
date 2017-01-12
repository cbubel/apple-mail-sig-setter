# Apple Mail Signature Setter
Bash script used to quickly set and update a custom HTML signature in Apple Mail.

## Description
Setting a custom HTML signature in Apple Mail is usually done by first creating a regular signature in the app itself, and then editing the signature in a hidden folder. This first part still needs to be done manually, but this script will handle the rest of the work, allowing you to simply write the HTML in a separate file and quickly update it when ready.

This script is not very robust or even *good* at the moment. It finds the appropriate file to edit by searching for the most recently edited one with a *.mailsignature* extension. This is fine if you *just* manually created the signature in Apple Mail as described above, but if you start editing other signatures in the app and then run the script, you may unintenionally overwrite your work. This is something I'm hoping to fix in the future.

## Notes
- This currently only works with MacOS Sierra, and does not currently work with iCloud.

## Steps
1. Open Apple Mail
2. Open Preferences (CMD + ,)
3. Under Signatures, click +
4. Name it whatever you want, or leave it as the default
5. In the same directory as where you've downloaded this bash script, create an HTML file that contains the code for your desired signature
6. Run ```bash setsig.sh NAME_OF_FILE.html``` in the terminal
