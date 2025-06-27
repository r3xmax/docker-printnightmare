## Docker-PrintNighmare
PrintNightmare is a big security issue, and there are lots of exploits on GitHub for it.
The tricky part? Each one needs a different version of Impacket, and switching between them can get messy and cause mistakes.
That’s why I made this Dockerfile — it lets you quickly run a Docker container with the right Impacket version and the exploit ready to go!

## Deploying / Usage

```bash
# Clone the repository
git clone https://github.com/r3xmax/docker-printnightmare

# Change to the project directory
cd docker-printnightmare

# Give execute permission to the script
chmod +x deploy.sh

# Run the script to build and start the container
./deploy.sh
```

If you’ve already deployed the container before and want to use it again, just run deploy.sh again:
```bash
./deploy.sh
```

## Uninstall Image

If you’ve finished all your work and want to completely remove the Docker image, just run this command:
```bash
docker rmi printnightmare-exploit
```

## Screenshot
![image](https://github.com/user-attachments/assets/8f7b9f68-b737-410b-8589-2498568ee1d6)

## Acknowledgement
- [@cube0x0](https://github.com/cube0x0) - for the [PrintNightmare exploit](https://github.com/cube0x0/CVE-2021-1675) and the repository [Impacket tools](https://github.com/cube0x0/impacket).
