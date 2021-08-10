![Screenshot](./logo/healthwise.png)

# Healthwise API

[Healthise](https://github.com/Elyes-Ferjani/HealthWise) is a rest API made for heath, search and medical purpose, it's provides a json format response with 
intended informations. 

Healthwise API is hosted at [https://rapidapi.com/](https://rapidapi.com/).

You can ask for more information by contacting us through this email : 

This is not an officially supported Google product. This project is currently maintained.

## Using the Healthwise API as a template

A simple way to get started is to use this project as a template, which gives you a site project that is set up and ready to use. To do this: 

1. Click **Use this template**.

2. Select a name for your new project and click **Create repository from template**.

3. Make your own local working copy of your new repo using git clone, replacing https://github.com/Elyes-Ferjani/HealthWise.git with your repo’s web URL:

```bash
git clone --recurse-submodules --depth 1 https://github.com/Elyes-Ferjani/HealthWise.git
```

You can now edit your own versions of the site’s source files.

If you want to do edits and want to publish these, you need to contact us.

```bash
npm install
```

## Running the website locally


Once you've made your working copy of the site repo, from the repo root folder, run:

```
npm start
```

## Running a container locally


1. Build the docker image 

   ```bash
   docker build -t healthwise .
   ```

1. Run the built image

   ```bash
   docker run -dp 5000:5000 healthwise
   ```

1. Verify that the service is working. 

   Open your web browser and type `http://localhost:5000/select-your-endpoint` in your navigation bar,
   This opens a local instance of the Healthwise . You can now make

### Cleanup

To stop Docker Compose, on your terminal window, press **Ctrl + C**. 

To remove the produced images run:

```console
docker rm
```
For more information see the [Docker Compose
documentation](https://docs.docker.com/compose/gettingstarted/).

## Contribution

This is a free source project, if you want to contribute by adding or making a modification

➜ create a branch
➜ create a pull request with a descriptive message


