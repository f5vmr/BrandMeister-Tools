# BrandMeister-Tools
A very untidy way to clean up the output of the file from .api.brandmeister.network/v1.0/groups/ that displays all the groups however the UTF-16 codes in Foreign Languages remain unconverted.
The Bash file runs to download the original file, and makes a messy edit of some of the entries and total removal of the Reflectors soon to be deprecated.
The output is then run through jq to produce a tidy .json result.
