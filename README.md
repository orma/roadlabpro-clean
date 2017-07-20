# RoadLabPro cleaning utilities

Scripts for converting [RoadLabPro](https://github.com/WorldBank-Transport/RoadLab-Pro) CSVs into actionable shapefiles, and for conflating the properties into the path.

To execute, place the desired data into `./data/input/`, and build and run the Docker Compose job. This containerized environment will ensure the same libraries and output across different operating systems.

```docker
docker-compose build
docker-compose run run_scripts
```
