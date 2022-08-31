{
 "cells": [
  {
   "cell_type": "markdown",
   "id": "30406aa7",
   "metadata": {
    "_cell_guid": "b1076dfc-b9ad-4769-8c92-a6c4dae69d19",
    "_uuid": "8f2839f25d086af736a60e9eeb907d3b93b6e0e5",
    "papermill": {
     "duration": 0.01191,
     "end_time": "2022-08-31T23:56:57.260361",
     "exception": false,
     "start_time": "2022-08-31T23:56:57.248451",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "# <center>Google Data Analytics Professional Certificate"
   ]
  },
  {
   "cell_type": "markdown",
   "id": "3c746108",
   "metadata": {
    "papermill": {
     "duration": 0.01065,
     "end_time": "2022-08-31T23:56:57.282026",
     "exception": false,
     "start_time": "2022-08-31T23:56:57.271376",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "## <center>Case Study: How Does a Bike-Share Navigate Speedy Success?<center>"
   ]
  },
  {
   "cell_type": "markdown",
   "id": "bcd92ffb",
   "metadata": {
    "papermill": {
     "duration": 0.011096,
     "end_time": "2022-08-31T23:56:57.304491",
     "exception": false,
     "start_time": "2022-08-31T23:56:57.293395",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "**Cyclistic** is A bike-share company in Chicago that offers a program featuring 5,824 bicycles and 692 docking stations.\n",
    "Cyclistic offers three types of bikes:\n",
    "-\treclining bikes,\n",
    "-\thand tricycles, and\n",
    "-\tcargo bikes\n",
    "\n",
    "and there are two types of customers:\n",
    "-\tannual member: those who purchase annual memberships, as well as:\n",
    "-\tcasual riders: those who purchase either single-ride passes, or full-day passes\n"
   ]
  },
  {
   "cell_type": "markdown",
   "id": "a32f9ff9",
   "metadata": {
    "papermill": {
     "duration": 0.010382,
     "end_time": "2022-08-31T23:56:57.325587",
     "exception": false,
     "start_time": "2022-08-31T23:56:57.315205",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "### Background\n",
    "-\tFinance analysts have concluded that annual members are much more profitable than casual riders.\n",
    "-\tRather than creating a marketing campaign that targets all-new customers, the marketing manager believes there is a very good chance to convert casual riders into members because they are already aware of the program and have chosen Cyclistic for their mobility needs\n",
    "-\tThe data analysis team has to design a new marketing strategy to convert casual riders into annual members.\n",
    "-\tCyclistic users are more likely to ride for leisure, but about 30% use them to commute to work each day.\n",
    "\n",
    "**Three questions will guide the future marketing program:**\n",
    "\n",
    "1. How do annual members and casual riders use Cyclistic bikes differently?\n",
    "2. Why would casual riders buy Cyclistic annual memberships?\n",
    "3. How can Cyclistic use digital media to influence casual riders to become members?"
   ]
  },
  {
   "cell_type": "markdown",
   "id": "57bcec86",
   "metadata": {
    "papermill": {
     "duration": 0.010081,
     "end_time": "2022-08-31T23:56:57.345781",
     "exception": false,
     "start_time": "2022-08-31T23:56:57.335700",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "### Business Task:\n",
    "\n",
    " The goal of this analysis is to answer the following question: How do annual members and casual riders use Cyclistic bikes differently?\n"
   ]
  },
  {
   "cell_type": "markdown",
   "id": "3a4d8697",
   "metadata": {
    "papermill": {
     "duration": 0.010333,
     "end_time": "2022-08-31T23:56:57.366865",
     "exception": false,
     "start_time": "2022-08-31T23:56:57.356532",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "**Notes about data sets used:**\n",
    "-\tData was obtained from [divvy-tripdata](https://divvy-tripdata.s3.amazonaws.com/index.html), and has been made available by Motivate International Inc. under this [license](https://ride.divvybikes.com/data-license-agreement).\n",
    "-\tData organized as CSV files where each file represents a full month of data entries.\n",
    "-\tData in this study comes from the datasets of the previous 12 months (August 2021 – July 2022.)\n",
    "-\tDatasets contain entries in columns about: bike types, start and end of time, station and geolocation, as well as riders’ types.\n",
    "-\tData-privacy issues prohibit using riders’ personally identifiable information, so we are not able to determine if the customers have purchased multiple single passes.\n",
    "- Data entries are all unique, meaning that there are no douplicates, and that we are not able to aggregate more than one to be attributed to a single person. "
   ]
  },
  {
   "cell_type": "markdown",
   "id": "db2aa188",
   "metadata": {
    "papermill": {
     "duration": 0.010928,
     "end_time": "2022-08-31T23:56:57.387751",
     "exception": false,
     "start_time": "2022-08-31T23:56:57.376823",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "**Note:** Dataset files were first opened using MS Excel to have a general idea about their structre and contents. Ther is no way to comine them in a single Excel file, beacuse they make for more than 5 million rows."
   ]
  },
  {
   "cell_type": "markdown",
   "id": "48a3058d",
   "metadata": {
    "papermill": {
     "duration": 0.010426,
     "end_time": "2022-08-31T23:56:57.408224",
     "exception": false,
     "start_time": "2022-08-31T23:56:57.397798",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "#### First, we import the required libraries to wrangle and visualized the data:"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 1,
   "id": "846168c6",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2022-08-31T23:56:57.434066Z",
     "iopub.status.busy": "2022-08-31T23:56:57.430966Z",
     "iopub.status.idle": "2022-08-31T23:56:58.835435Z",
     "shell.execute_reply": "2022-08-31T23:56:58.833518Z"
    },
    "papermill": {
     "duration": 1.420445,
     "end_time": "2022-08-31T23:56:58.838784",
     "exception": false,
     "start_time": "2022-08-31T23:56:57.418339",
     "status": "completed"
    },
    "tags": []
   },
   "outputs": [
    {
     "name": "stderr",
     "output_type": "stream",
     "text": [
      "── \u001b[1mAttaching packages\u001b[22m ─────────────────────────────────────── tidyverse 1.3.1 ──\n",
      "\n",
      "\u001b[32m✔\u001b[39m \u001b[34mggplot2\u001b[39m 3.3.6     \u001b[32m✔\u001b[39m \u001b[34mpurrr  \u001b[39m 0.3.4\n",
      "\u001b[32m✔\u001b[39m \u001b[34mtibble \u001b[39m 3.1.7     \u001b[32m✔\u001b[39m \u001b[34mdplyr  \u001b[39m 1.0.9\n",
      "\u001b[32m✔\u001b[39m \u001b[34mtidyr  \u001b[39m 1.2.0     \u001b[32m✔\u001b[39m \u001b[34mstringr\u001b[39m 1.4.0\n",
      "\u001b[32m✔\u001b[39m \u001b[34mreadr  \u001b[39m 2.1.2     \u001b[32m✔\u001b[39m \u001b[34mforcats\u001b[39m 0.5.1\n",
      "\n",
      "── \u001b[1mConflicts\u001b[22m ────────────────────────────────────────── tidyverse_conflicts() ──\n",
      "\u001b[31m✖\u001b[39m \u001b[34mdplyr\u001b[39m::\u001b[32mfilter()\u001b[39m masks \u001b[34mstats\u001b[39m::filter()\n",
      "\u001b[31m✖\u001b[39m \u001b[34mdplyr\u001b[39m::\u001b[32mlag()\u001b[39m    masks \u001b[34mstats\u001b[39m::lag()\n",
      "\n",
      "\n",
      "Attaching package: ‘lubridate’\n",
      "\n",
      "\n",
      "The following objects are masked from ‘package:base’:\n",
      "\n",
      "    date, intersect, setdiff, union\n",
      "\n",
      "\n"
     ]
    }
   ],
   "source": [
    "library(tidyverse)\n",
    "library(lubridate)\n",
    "library(ggplot2)"
   ]
  },
  {
   "cell_type": "markdown",
   "id": "11a38a8c",
   "metadata": {
    "papermill": {
     "duration": 0.010625,
     "end_time": "2022-08-31T23:56:58.860288",
     "exception": false,
     "start_time": "2022-08-31T23:56:58.849663",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "#### Now, we are going to import the data files (12 files, one for each month of the previous year)"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 2,
   "id": "33fc46d5",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2022-08-31T23:56:58.914202Z",
     "iopub.status.busy": "2022-08-31T23:56:58.883206Z",
     "iopub.status.idle": "2022-08-31T23:57:30.261671Z",
     "shell.execute_reply": "2022-08-31T23:57:30.259619Z"
    },
    "papermill": {
     "duration": 31.395193,
     "end_time": "2022-08-31T23:57:30.265833",
     "exception": false,
     "start_time": "2022-08-31T23:56:58.870640",
     "status": "completed"
    },
    "tags": []
   },
   "outputs": [
    {
     "name": "stderr",
     "output_type": "stream",
     "text": [
      "\u001b[1mRows: \u001b[22m\u001b[34m804352\u001b[39m \u001b[1mColumns: \u001b[22m\u001b[34m13\u001b[39m\n",
      "\u001b[36m──\u001b[39m \u001b[1mColumn specification\u001b[22m \u001b[36m────────────────────────────────────────────────────────\u001b[39m\n",
      "\u001b[1mDelimiter:\u001b[22m \",\"\n",
      "\u001b[31mchr\u001b[39m  (7): ride_id, rideable_type, start_station_name, start_station_id, end_...\n",
      "\u001b[32mdbl\u001b[39m  (4): start_lat, start_lng, end_lat, end_lng\n",
      "\u001b[34mdttm\u001b[39m (2): started_at, ended_at\n",
      "\n",
      "\u001b[36mℹ\u001b[39m Use `spec()` to retrieve the full column specification for this data.\n",
      "\u001b[36mℹ\u001b[39m Specify the column types or set `show_col_types = FALSE` to quiet this message.\n",
      "\u001b[1mRows: \u001b[22m\u001b[34m756147\u001b[39m \u001b[1mColumns: \u001b[22m\u001b[34m13\u001b[39m\n",
      "\u001b[36m──\u001b[39m \u001b[1mColumn specification\u001b[22m \u001b[36m────────────────────────────────────────────────────────\u001b[39m\n",
      "\u001b[1mDelimiter:\u001b[22m \",\"\n",
      "\u001b[31mchr\u001b[39m  (7): ride_id, rideable_type, start_station_name, start_station_id, end_...\n",
      "\u001b[32mdbl\u001b[39m  (4): start_lat, start_lng, end_lat, end_lng\n",
      "\u001b[34mdttm\u001b[39m (2): started_at, ended_at\n",
      "\n",
      "\u001b[36mℹ\u001b[39m Use `spec()` to retrieve the full column specification for this data.\n",
      "\u001b[36mℹ\u001b[39m Specify the column types or set `show_col_types = FALSE` to quiet this message.\n",
      "\u001b[1mRows: \u001b[22m\u001b[34m631226\u001b[39m \u001b[1mColumns: \u001b[22m\u001b[34m13\u001b[39m\n",
      "\u001b[36m──\u001b[39m \u001b[1mColumn specification\u001b[22m \u001b[36m────────────────────────────────────────────────────────\u001b[39m\n",
      "\u001b[1mDelimiter:\u001b[22m \",\"\n",
      "\u001b[31mchr\u001b[39m  (7): ride_id, rideable_type, start_station_name, start_station_id, end_...\n",
      "\u001b[32mdbl\u001b[39m  (4): start_lat, start_lng, end_lat, end_lng\n",
      "\u001b[34mdttm\u001b[39m (2): started_at, ended_at\n",
      "\n",
      "\u001b[36mℹ\u001b[39m Use `spec()` to retrieve the full column specification for this data.\n",
      "\u001b[36mℹ\u001b[39m Specify the column types or set `show_col_types = FALSE` to quiet this message.\n",
      "\u001b[1mRows: \u001b[22m\u001b[34m359978\u001b[39m \u001b[1mColumns: \u001b[22m\u001b[34m13\u001b[39m\n",
      "\u001b[36m──\u001b[39m \u001b[1mColumn specification\u001b[22m \u001b[36m────────────────────────────────────────────────────────\u001b[39m\n",
      "\u001b[1mDelimiter:\u001b[22m \",\"\n",
      "\u001b[31mchr\u001b[39m  (7): ride_id, rideable_type, start_station_name, start_station_id, end_...\n",
      "\u001b[32mdbl\u001b[39m  (4): start_lat, start_lng, end_lat, end_lng\n",
      "\u001b[34mdttm\u001b[39m (2): started_at, ended_at\n",
      "\n",
      "\u001b[36mℹ\u001b[39m Use `spec()` to retrieve the full column specification for this data.\n",
      "\u001b[36mℹ\u001b[39m Specify the column types or set `show_col_types = FALSE` to quiet this message.\n",
      "\u001b[1mRows: \u001b[22m\u001b[34m247540\u001b[39m \u001b[1mColumns: \u001b[22m\u001b[34m13\u001b[39m\n",
      "\u001b[36m──\u001b[39m \u001b[1mColumn specification\u001b[22m \u001b[36m────────────────────────────────────────────────────────\u001b[39m\n",
      "\u001b[1mDelimiter:\u001b[22m \",\"\n",
      "\u001b[31mchr\u001b[39m  (7): ride_id, rideable_type, start_station_name, start_station_id, end_...\n",
      "\u001b[32mdbl\u001b[39m  (4): start_lat, start_lng, end_lat, end_lng\n",
      "\u001b[34mdttm\u001b[39m (2): started_at, ended_at\n",
      "\n",
      "\u001b[36mℹ\u001b[39m Use `spec()` to retrieve the full column specification for this data.\n",
      "\u001b[36mℹ\u001b[39m Specify the column types or set `show_col_types = FALSE` to quiet this message.\n",
      "\u001b[1mRows: \u001b[22m\u001b[34m103770\u001b[39m \u001b[1mColumns: \u001b[22m\u001b[34m13\u001b[39m\n",
      "\u001b[36m──\u001b[39m \u001b[1mColumn specification\u001b[22m \u001b[36m────────────────────────────────────────────────────────\u001b[39m\n",
      "\u001b[1mDelimiter:\u001b[22m \",\"\n",
      "\u001b[31mchr\u001b[39m  (7): ride_id, rideable_type, start_station_name, start_station_id, end_...\n",
      "\u001b[32mdbl\u001b[39m  (4): start_lat, start_lng, end_lat, end_lng\n",
      "\u001b[34mdttm\u001b[39m (2): started_at, ended_at\n",
      "\n",
      "\u001b[36mℹ\u001b[39m Use `spec()` to retrieve the full column specification for this data.\n",
      "\u001b[36mℹ\u001b[39m Specify the column types or set `show_col_types = FALSE` to quiet this message.\n",
      "\u001b[1mRows: \u001b[22m\u001b[34m115609\u001b[39m \u001b[1mColumns: \u001b[22m\u001b[34m13\u001b[39m\n",
      "\u001b[36m──\u001b[39m \u001b[1mColumn specification\u001b[22m \u001b[36m────────────────────────────────────────────────────────\u001b[39m\n",
      "\u001b[1mDelimiter:\u001b[22m \",\"\n",
      "\u001b[31mchr\u001b[39m  (7): ride_id, rideable_type, start_station_name, start_station_id, end_...\n",
      "\u001b[32mdbl\u001b[39m  (4): start_lat, start_lng, end_lat, end_lng\n",
      "\u001b[34mdttm\u001b[39m (2): started_at, ended_at\n",
      "\n",
      "\u001b[36mℹ\u001b[39m Use `spec()` to retrieve the full column specification for this data.\n",
      "\u001b[36mℹ\u001b[39m Specify the column types or set `show_col_types = FALSE` to quiet this message.\n",
      "\u001b[1mRows: \u001b[22m\u001b[34m284042\u001b[39m \u001b[1mColumns: \u001b[22m\u001b[34m13\u001b[39m\n",
      "\u001b[36m──\u001b[39m \u001b[1mColumn specification\u001b[22m \u001b[36m────────────────────────────────────────────────────────\u001b[39m\n",
      "\u001b[1mDelimiter:\u001b[22m \",\"\n",
      "\u001b[31mchr\u001b[39m  (7): ride_id, rideable_type, start_station_name, start_station_id, end_...\n",
      "\u001b[32mdbl\u001b[39m  (4): start_lat, start_lng, end_lat, end_lng\n",
      "\u001b[34mdttm\u001b[39m (2): started_at, ended_at\n",
      "\n",
      "\u001b[36mℹ\u001b[39m Use `spec()` to retrieve the full column specification for this data.\n",
      "\u001b[36mℹ\u001b[39m Specify the column types or set `show_col_types = FALSE` to quiet this message.\n",
      "\u001b[1mRows: \u001b[22m\u001b[34m371249\u001b[39m \u001b[1mColumns: \u001b[22m\u001b[34m13\u001b[39m\n",
      "\u001b[36m──\u001b[39m \u001b[1mColumn specification\u001b[22m \u001b[36m────────────────────────────────────────────────────────\u001b[39m\n",
      "\u001b[1mDelimiter:\u001b[22m \",\"\n",
      "\u001b[31mchr\u001b[39m  (7): ride_id, rideable_type, start_station_name, start_station_id, end_...\n",
      "\u001b[32mdbl\u001b[39m  (4): start_lat, start_lng, end_lat, end_lng\n",
      "\u001b[34mdttm\u001b[39m (2): started_at, ended_at\n",
      "\n",
      "\u001b[36mℹ\u001b[39m Use `spec()` to retrieve the full column specification for this data.\n",
      "\u001b[36mℹ\u001b[39m Specify the column types or set `show_col_types = FALSE` to quiet this message.\n",
      "\u001b[1mRows: \u001b[22m\u001b[34m634858\u001b[39m \u001b[1mColumns: \u001b[22m\u001b[34m13\u001b[39m\n",
      "\u001b[36m──\u001b[39m \u001b[1mColumn specification\u001b[22m \u001b[36m────────────────────────────────────────────────────────\u001b[39m\n",
      "\u001b[1mDelimiter:\u001b[22m \",\"\n",
      "\u001b[31mchr\u001b[39m  (7): ride_id, rideable_type, start_station_name, start_station_id, end_...\n",
      "\u001b[32mdbl\u001b[39m  (4): start_lat, start_lng, end_lat, end_lng\n",
      "\u001b[34mdttm\u001b[39m (2): started_at, ended_at\n",
      "\n",
      "\u001b[36mℹ\u001b[39m Use `spec()` to retrieve the full column specification for this data.\n",
      "\u001b[36mℹ\u001b[39m Specify the column types or set `show_col_types = FALSE` to quiet this message.\n",
      "\u001b[1mRows: \u001b[22m\u001b[34m769204\u001b[39m \u001b[1mColumns: \u001b[22m\u001b[34m13\u001b[39m\n",
      "\u001b[36m──\u001b[39m \u001b[1mColumn specification\u001b[22m \u001b[36m────────────────────────────────────────────────────────\u001b[39m\n",
      "\u001b[1mDelimiter:\u001b[22m \",\"\n",
      "\u001b[31mchr\u001b[39m  (7): ride_id, rideable_type, start_station_name, start_station_id, end_...\n",
      "\u001b[32mdbl\u001b[39m  (4): start_lat, start_lng, end_lat, end_lng\n",
      "\u001b[34mdttm\u001b[39m (2): started_at, ended_at\n",
      "\n",
      "\u001b[36mℹ\u001b[39m Use `spec()` to retrieve the full column specification for this data.\n",
      "\u001b[36mℹ\u001b[39m Specify the column types or set `show_col_types = FALSE` to quiet this message.\n",
      "\u001b[1mRows: \u001b[22m\u001b[34m823488\u001b[39m \u001b[1mColumns: \u001b[22m\u001b[34m13\u001b[39m\n",
      "\u001b[36m──\u001b[39m \u001b[1mColumn specification\u001b[22m \u001b[36m────────────────────────────────────────────────────────\u001b[39m\n",
      "\u001b[1mDelimiter:\u001b[22m \",\"\n",
      "\u001b[31mchr\u001b[39m  (7): ride_id, rideable_type, start_station_name, start_station_id, end_...\n",
      "\u001b[32mdbl\u001b[39m  (4): start_lat, start_lng, end_lat, end_lng\n",
      "\u001b[34mdttm\u001b[39m (2): started_at, ended_at\n",
      "\n",
      "\u001b[36mℹ\u001b[39m Use `spec()` to retrieve the full column specification for this data.\n",
      "\u001b[36mℹ\u001b[39m Specify the column types or set `show_col_types = FALSE` to quiet this message.\n"
     ]
    }
   ],
   "source": [
    "aug2021 <- read_csv(\"../input/divvy-cyclistic/202108-divvy-tripdata/202108-divvy-tripdata.csv\")\n",
    "sep2021 <- read_csv(\"../input/divvy-cyclistic/202109-divvy-tripdata/202109-divvy-tripdata.csv\")\n",
    "oct2021 <- read_csv(\"../input/divvy-cyclistic/202110-divvy-tripdata/202110-divvy-tripdata.csv\")\n",
    "nov2021 <- read_csv(\"../input/divvy-cyclistic/202111-divvy-tripdata/202111-divvy-tripdata.csv\")\n",
    "dec2021 <- read_csv(\"../input/divvy-cyclistic/202112-divvy-tripdata/202112-divvy-tripdata.csv\")\n",
    "jan2022 <- read_csv(\"../input/divvy-cyclistic/202201-divvy-tripdata/202201-divvy-tripdata.csv\")\n",
    "feb2022 <- read_csv(\"../input/divvy-cyclistic/202202-divvy-tripdata/202202-divvy-tripdata.csv\")\n",
    "mar2022 <- read_csv(\"../input/divvy-cyclistic/202203-divvy-tripdata/202203-divvy-tripdata.csv\")\n",
    "apr2022 <- read_csv(\"../input/divvy-cyclistic/202204-divvy-tripdata/202204-divvy-tripdata.csv\")\n",
    "may2022 <- read_csv(\"../input/divvy-cyclistic/202205-divvy-tripdata/202205-divvy-tripdata.csv\")\n",
    "jun2022 <- read_csv(\"../input/divvy-cyclistic/202206-divvy-tripdata/202206-divvy-tripdata.csv\")\n",
    "jul2022 <- read_csv(\"../input/divvy-cyclistic/202207-divvy-tripdata/202207-divvy-tripdata.csv\")"
   ]
  },
  {
   "cell_type": "markdown",
   "id": "e53dee7a",
   "metadata": {
    "papermill": {
     "duration": 0.012881,
     "end_time": "2022-08-31T23:57:30.292391",
     "exception": false,
     "start_time": "2022-08-31T23:57:30.279510",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "#### The next step is to wrangle the data"
   ]
  },
  {
   "cell_type": "markdown",
   "id": "c89075ac",
   "metadata": {
    "papermill": {
     "duration": 0.013596,
     "end_time": "2022-08-31T23:57:30.318504",
     "exception": false,
     "start_time": "2022-08-31T23:57:30.304908",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "**Let's check the tables for incosistancies**"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 3,
   "id": "5c982c87",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2022-08-31T23:57:30.349934Z",
     "iopub.status.busy": "2022-08-31T23:57:30.347753Z",
     "iopub.status.idle": "2022-08-31T23:57:30.782976Z",
     "shell.execute_reply": "2022-08-31T23:57:30.780320Z"
    },
    "papermill": {
     "duration": 0.454679,
     "end_time": "2022-08-31T23:57:30.786327",
     "exception": false,
     "start_time": "2022-08-31T23:57:30.331648",
     "status": "completed"
    },
    "tags": []
   },
   "outputs": [
    {
     "name": "stdout",
     "output_type": "stream",
     "text": [
      "spec_tbl_df [804,352 × 13] (S3: spec_tbl_df/tbl_df/tbl/data.frame)\n",
      " $ ride_id           : chr [1:804352] \"99103BB87CC6C1BB\" \"EAFCCCFB0A3FC5A1\" \"9EF4F46C57AD234D\" \"5834D3208BFAF1DA\" ...\n",
      " $ rideable_type     : chr [1:804352] \"electric_bike\" \"electric_bike\" \"electric_bike\" \"electric_bike\" ...\n",
      " $ started_at        : POSIXct[1:804352], format: \"2021-08-10 17:15:49\" \"2021-08-10 17:23:14\" ...\n",
      " $ ended_at          : POSIXct[1:804352], format: \"2021-08-10 17:22:44\" \"2021-08-10 17:39:24\" ...\n",
      " $ start_station_name: chr [1:804352] NA NA NA NA ...\n",
      " $ start_station_id  : chr [1:804352] NA NA NA NA ...\n",
      " $ end_station_name  : chr [1:804352] NA NA NA NA ...\n",
      " $ end_station_id    : chr [1:804352] NA NA NA NA ...\n",
      " $ start_lat         : num [1:804352] 41.8 41.8 42 42 41.8 ...\n",
      " $ start_lng         : num [1:804352] -87.7 -87.7 -87.7 -87.7 -87.6 ...\n",
      " $ end_lat           : num [1:804352] 41.8 41.8 42 42 41.8 ...\n",
      " $ end_lng           : num [1:804352] -87.7 -87.6 -87.7 -87.7 -87.6 ...\n",
      " $ member_casual     : chr [1:804352] \"member\" \"member\" \"member\" \"member\" ...\n",
      " - attr(*, \"spec\")=\n",
      "  .. cols(\n",
      "  ..   ride_id = \u001b[31mcol_character()\u001b[39m,\n",
      "  ..   rideable_type = \u001b[31mcol_character()\u001b[39m,\n",
      "  ..   started_at = \u001b[34mcol_datetime(format = \"\")\u001b[39m,\n",
      "  ..   ended_at = \u001b[34mcol_datetime(format = \"\")\u001b[39m,\n",
      "  ..   start_station_name = \u001b[31mcol_character()\u001b[39m,\n",
      "  ..   start_station_id = \u001b[31mcol_character()\u001b[39m,\n",
      "  ..   end_station_name = \u001b[31mcol_character()\u001b[39m,\n",
      "  ..   end_station_id = \u001b[31mcol_character()\u001b[39m,\n",
      "  ..   start_lat = \u001b[32mcol_double()\u001b[39m,\n",
      "  ..   start_lng = \u001b[32mcol_double()\u001b[39m,\n",
      "  ..   end_lat = \u001b[32mcol_double()\u001b[39m,\n",
      "  ..   end_lng = \u001b[32mcol_double()\u001b[39m,\n",
      "  ..   member_casual = \u001b[31mcol_character()\u001b[39m\n",
      "  .. )\n",
      " - attr(*, \"problems\")=<externalptr> \n",
      "spec_tbl_df [756,147 × 13] (S3: spec_tbl_df/tbl_df/tbl/data.frame)\n",
      " $ ride_id           : chr [1:756147] \"9DC7B962304CBFD8\" \"F930E2C6872D6B32\" \"6EF72137900BB910\" \"78D1DE133B3DBF55\" ...\n",
      " $ rideable_type     : chr [1:756147] \"electric_bike\" \"electric_bike\" \"electric_bike\" \"electric_bike\" ...\n",
      " $ started_at        : POSIXct[1:756147], format: \"2021-09-28 16:07:10\" \"2021-09-28 14:24:51\" ...\n",
      " $ ended_at          : POSIXct[1:756147], format: \"2021-09-28 16:09:54\" \"2021-09-28 14:40:05\" ...\n",
      " $ start_station_name: chr [1:756147] NA NA NA NA ...\n",
      " $ start_station_id  : chr [1:756147] NA NA NA NA ...\n",
      " $ end_station_name  : chr [1:756147] NA NA NA NA ...\n",
      " $ end_station_id    : chr [1:756147] NA NA NA NA ...\n",
      " $ start_lat         : num [1:756147] 41.9 41.9 41.8 41.8 41.9 ...\n",
      " $ start_lng         : num [1:756147] -87.7 -87.6 -87.7 -87.7 -87.7 ...\n",
      " $ end_lat           : num [1:756147] 41.9 42 41.8 41.8 41.9 ...\n",
      " $ end_lng           : num [1:756147] -87.7 -87.7 -87.7 -87.7 -87.7 ...\n",
      " $ member_casual     : chr [1:756147] \"casual\" \"casual\" \"casual\" \"casual\" ...\n",
      " - attr(*, \"spec\")=\n",
      "  .. cols(\n",
      "  ..   ride_id = \u001b[31mcol_character()\u001b[39m,\n",
      "  ..   rideable_type = \u001b[31mcol_character()\u001b[39m,\n",
      "  ..   started_at = \u001b[34mcol_datetime(format = \"\")\u001b[39m,\n",
      "  ..   ended_at = \u001b[34mcol_datetime(format = \"\")\u001b[39m,\n",
      "  ..   start_station_name = \u001b[31mcol_character()\u001b[39m,\n",
      "  ..   start_station_id = \u001b[31mcol_character()\u001b[39m,\n",
      "  ..   end_station_name = \u001b[31mcol_character()\u001b[39m,\n",
      "  ..   end_station_id = \u001b[31mcol_character()\u001b[39m,\n",
      "  ..   start_lat = \u001b[32mcol_double()\u001b[39m,\n",
      "  ..   start_lng = \u001b[32mcol_double()\u001b[39m,\n",
      "  ..   end_lat = \u001b[32mcol_double()\u001b[39m,\n",
      "  ..   end_lng = \u001b[32mcol_double()\u001b[39m,\n",
      "  ..   member_casual = \u001b[31mcol_character()\u001b[39m\n",
      "  .. )\n",
      " - attr(*, \"problems\")=<externalptr> \n",
      "spec_tbl_df [631,226 × 13] (S3: spec_tbl_df/tbl_df/tbl/data.frame)\n",
      " $ ride_id           : chr [1:631226] \"620BC6107255BF4C\" \"4471C70731AB2E45\" \"26CA69D43D15EE14\" \"362947F0437E1514\" ...\n",
      " $ rideable_type     : chr [1:631226] \"electric_bike\" \"electric_bike\" \"electric_bike\" \"electric_bike\" ...\n",
      " $ started_at        : POSIXct[1:631226], format: \"2021-10-22 12:46:42\" \"2021-10-21 09:12:37\" ...\n",
      " $ ended_at          : POSIXct[1:631226], format: \"2021-10-22 12:49:50\" \"2021-10-21 09:14:14\" ...\n",
      " $ start_station_name: chr [1:631226] \"Kingsbury St & Kinzie St\" NA NA NA ...\n",
      " $ start_station_id  : chr [1:631226] \"KA1503000043\" NA NA NA ...\n",
      " $ end_station_name  : chr [1:631226] NA NA NA NA ...\n",
      " $ end_station_id    : chr [1:631226] NA NA NA NA ...\n",
      " $ start_lat         : num [1:631226] 41.9 41.9 41.9 41.9 41.9 ...\n",
      " $ start_lng         : num [1:631226] -87.6 -87.7 -87.7 -87.7 -87.7 ...\n",
      " $ end_lat           : num [1:631226] 41.9 41.9 41.9 41.9 41.9 ...\n",
      " $ end_lng           : num [1:631226] -87.6 -87.7 -87.7 -87.7 -87.7 ...\n",
      " $ member_casual     : chr [1:631226] \"member\" \"member\" \"member\" \"member\" ...\n",
      " - attr(*, \"spec\")=\n",
      "  .. cols(\n",
      "  ..   ride_id = \u001b[31mcol_character()\u001b[39m,\n",
      "  ..   rideable_type = \u001b[31mcol_character()\u001b[39m,\n",
      "  ..   started_at = \u001b[34mcol_datetime(format = \"\")\u001b[39m,\n",
      "  ..   ended_at = \u001b[34mcol_datetime(format = \"\")\u001b[39m,\n",
      "  ..   start_station_name = \u001b[31mcol_character()\u001b[39m,\n",
      "  ..   start_station_id = \u001b[31mcol_character()\u001b[39m,\n",
      "  ..   end_station_name = \u001b[31mcol_character()\u001b[39m,\n",
      "  ..   end_station_id = \u001b[31mcol_character()\u001b[39m,\n",
      "  ..   start_lat = \u001b[32mcol_double()\u001b[39m,\n",
      "  ..   start_lng = \u001b[32mcol_double()\u001b[39m,\n",
      "  ..   end_lat = \u001b[32mcol_double()\u001b[39m,\n",
      "  ..   end_lng = \u001b[32mcol_double()\u001b[39m,\n",
      "  ..   member_casual = \u001b[31mcol_character()\u001b[39m\n",
      "  .. )\n",
      " - attr(*, \"problems\")=<externalptr> \n",
      "spec_tbl_df [359,978 × 13] (S3: spec_tbl_df/tbl_df/tbl/data.frame)\n",
      " $ ride_id           : chr [1:359978] \"7C00A93E10556E47\" \"90854840DFD508BA\" \"0A7D10CDD144061C\" \"2F3BE33085BCFF02\" ...\n",
      " $ rideable_type     : chr [1:359978] \"electric_bike\" \"electric_bike\" \"electric_bike\" \"electric_bike\" ...\n",
      " $ started_at        : POSIXct[1:359978], format: \"2021-11-27 13:27:38\" \"2021-11-27 13:38:25\" ...\n",
      " $ ended_at          : POSIXct[1:359978], format: \"2021-11-27 13:46:38\" \"2021-11-27 13:56:10\" ...\n",
      " $ start_station_name: chr [1:359978] NA NA NA NA ...\n",
      " $ start_station_id  : chr [1:359978] NA NA NA NA ...\n",
      " $ end_station_name  : chr [1:359978] NA NA NA NA ...\n",
      " $ end_station_id    : chr [1:359978] NA NA NA NA ...\n",
      " $ start_lat         : num [1:359978] 41.9 42 42 41.9 41.9 ...\n",
      " $ start_lng         : num [1:359978] -87.7 -87.7 -87.7 -87.8 -87.6 ...\n",
      " $ end_lat           : num [1:359978] 42 41.9 42 41.9 41.9 ...\n",
      " $ end_lng           : num [1:359978] -87.7 -87.7 -87.7 -87.8 -87.6 ...\n",
      " $ member_casual     : chr [1:359978] \"casual\" \"casual\" \"casual\" \"casual\" ...\n",
      " - attr(*, \"spec\")=\n",
      "  .. cols(\n",
      "  ..   ride_id = \u001b[31mcol_character()\u001b[39m,\n",
      "  ..   rideable_type = \u001b[31mcol_character()\u001b[39m,\n",
      "  ..   started_at = \u001b[34mcol_datetime(format = \"\")\u001b[39m,\n",
      "  ..   ended_at = \u001b[34mcol_datetime(format = \"\")\u001b[39m,\n",
      "  ..   start_station_name = \u001b[31mcol_character()\u001b[39m,\n",
      "  ..   start_station_id = \u001b[31mcol_character()\u001b[39m,\n",
      "  ..   end_station_name = \u001b[31mcol_character()\u001b[39m,\n",
      "  ..   end_station_id = \u001b[31mcol_character()\u001b[39m,\n",
      "  ..   start_lat = \u001b[32mcol_double()\u001b[39m,\n",
      "  ..   start_lng = \u001b[32mcol_double()\u001b[39m,\n",
      "  ..   end_lat = \u001b[32mcol_double()\u001b[39m,\n",
      "  ..   end_lng = \u001b[32mcol_double()\u001b[39m,\n",
      "  ..   member_casual = \u001b[31mcol_character()\u001b[39m\n",
      "  .. )\n",
      " - attr(*, \"problems\")=<externalptr> \n",
      "spec_tbl_df [247,540 × 13] (S3: spec_tbl_df/tbl_df/tbl/data.frame)\n",
      " $ ride_id           : chr [1:247540] \"46F8167220E4431F\" \"73A77762838B32FD\" \"4CF42452054F59C5\" \"3278BA87BF698339\" ...\n",
      " $ rideable_type     : chr [1:247540] \"electric_bike\" \"electric_bike\" \"electric_bike\" \"classic_bike\" ...\n",
      " $ started_at        : POSIXct[1:247540], format: \"2021-12-07 15:06:07\" \"2021-12-11 03:43:29\" ...\n",
      " $ ended_at          : POSIXct[1:247540], format: \"2021-12-07 15:13:42\" \"2021-12-11 04:10:23\" ...\n",
      " $ start_station_name: chr [1:247540] \"Laflin St & Cullerton St\" \"LaSalle Dr & Huron St\" \"Halsted St & North Branch St\" \"Halsted St & North Branch St\" ...\n",
      " $ start_station_id  : chr [1:247540] \"13307\" \"KP1705001026\" \"KA1504000117\" \"KA1504000117\" ...\n",
      " $ end_station_name  : chr [1:247540] \"Morgan St & Polk St\" \"Clarendon Ave & Leland Ave\" \"Broadway & Barry Ave\" \"LaSalle Dr & Huron St\" ...\n",
      " $ end_station_id    : chr [1:247540] \"TA1307000130\" \"TA1307000119\" \"13137\" \"KP1705001026\" ...\n",
      " $ start_lat         : num [1:247540] 41.9 41.9 41.9 41.9 41.9 ...\n",
      " $ start_lng         : num [1:247540] -87.7 -87.6 -87.6 -87.6 -87.7 ...\n",
      " $ end_lat           : num [1:247540] 41.9 42 41.9 41.9 41.9 ...\n",
      " $ end_lng           : num [1:247540] -87.7 -87.7 -87.6 -87.6 -87.6 ...\n",
      " $ member_casual     : chr [1:247540] \"member\" \"casual\" \"member\" \"member\" ...\n",
      " - attr(*, \"spec\")=\n",
      "  .. cols(\n",
      "  ..   ride_id = \u001b[31mcol_character()\u001b[39m,\n",
      "  ..   rideable_type = \u001b[31mcol_character()\u001b[39m,\n",
      "  ..   started_at = \u001b[34mcol_datetime(format = \"\")\u001b[39m,\n",
      "  ..   ended_at = \u001b[34mcol_datetime(format = \"\")\u001b[39m,\n",
      "  ..   start_station_name = \u001b[31mcol_character()\u001b[39m,\n",
      "  ..   start_station_id = \u001b[31mcol_character()\u001b[39m,\n",
      "  ..   end_station_name = \u001b[31mcol_character()\u001b[39m,\n",
      "  ..   end_station_id = \u001b[31mcol_character()\u001b[39m,\n",
      "  ..   start_lat = \u001b[32mcol_double()\u001b[39m,\n",
      "  ..   start_lng = \u001b[32mcol_double()\u001b[39m,\n",
      "  ..   end_lat = \u001b[32mcol_double()\u001b[39m,\n",
      "  ..   end_lng = \u001b[32mcol_double()\u001b[39m,\n",
      "  ..   member_casual = \u001b[31mcol_character()\u001b[39m\n",
      "  .. )\n",
      " - attr(*, \"problems\")=<externalptr> \n",
      "spec_tbl_df [103,770 × 13] (S3: spec_tbl_df/tbl_df/tbl/data.frame)\n",
      " $ ride_id           : chr [1:103770] \"C2F7DD78E82EC875\" \"A6CF8980A652D272\" \"BD0F91DFF741C66D\" \"CBB80ED419105406\" ...\n",
      " $ rideable_type     : chr [1:103770] \"electric_bike\" \"electric_bike\" \"classic_bike\" \"classic_bike\" ...\n",
      " $ started_at        : POSIXct[1:103770], format: \"2022-01-13 11:59:47\" \"2022-01-10 08:41:56\" ...\n",
      " $ ended_at          : POSIXct[1:103770], format: \"2022-01-13 12:02:44\" \"2022-01-10 08:46:17\" ...\n",
      " $ start_station_name: chr [1:103770] \"Glenwood Ave & Touhy Ave\" \"Glenwood Ave & Touhy Ave\" \"Sheffield Ave & Fullerton Ave\" \"Clark St & Bryn Mawr Ave\" ...\n",
      " $ start_station_id  : chr [1:103770] \"525\" \"525\" \"TA1306000016\" \"KA1504000151\" ...\n",
      " $ end_station_name  : chr [1:103770] \"Clark St & Touhy Ave\" \"Clark St & Touhy Ave\" \"Greenview Ave & Fullerton Ave\" \"Paulina St & Montrose Ave\" ...\n",
      " $ end_station_id    : chr [1:103770] \"RP-007\" \"RP-007\" \"TA1307000001\" \"TA1309000021\" ...\n",
      " $ start_lat         : num [1:103770] 42 42 41.9 42 41.9 ...\n",
      " $ start_lng         : num [1:103770] -87.7 -87.7 -87.7 -87.7 -87.6 ...\n",
      " $ end_lat           : num [1:103770] 42 42 41.9 42 41.9 ...\n",
      " $ end_lng           : num [1:103770] -87.7 -87.7 -87.7 -87.7 -87.6 ...\n",
      " $ member_casual     : chr [1:103770] \"casual\" \"casual\" \"member\" \"casual\" ...\n",
      " - attr(*, \"spec\")=\n",
      "  .. cols(\n",
      "  ..   ride_id = \u001b[31mcol_character()\u001b[39m,\n",
      "  ..   rideable_type = \u001b[31mcol_character()\u001b[39m,\n",
      "  ..   started_at = \u001b[34mcol_datetime(format = \"\")\u001b[39m,\n",
      "  ..   ended_at = \u001b[34mcol_datetime(format = \"\")\u001b[39m,\n",
      "  ..   start_station_name = \u001b[31mcol_character()\u001b[39m,\n",
      "  ..   start_station_id = \u001b[31mcol_character()\u001b[39m,\n",
      "  ..   end_station_name = \u001b[31mcol_character()\u001b[39m,\n",
      "  ..   end_station_id = \u001b[31mcol_character()\u001b[39m,\n",
      "  ..   start_lat = \u001b[32mcol_double()\u001b[39m,\n",
      "  ..   start_lng = \u001b[32mcol_double()\u001b[39m,\n",
      "  ..   end_lat = \u001b[32mcol_double()\u001b[39m,\n",
      "  ..   end_lng = \u001b[32mcol_double()\u001b[39m,\n",
      "  ..   member_casual = \u001b[31mcol_character()\u001b[39m\n",
      "  .. )\n",
      " - attr(*, \"problems\")=<externalptr> \n",
      "spec_tbl_df [115,609 × 13] (S3: spec_tbl_df/tbl_df/tbl/data.frame)\n",
      " $ ride_id           : chr [1:115609] \"E1E065E7ED285C02\" \"1602DCDC5B30FFE3\" \"BE7DD2AF4B55C4AF\" \"A1789BDF844412BE\" ...\n",
      " $ rideable_type     : chr [1:115609] \"classic_bike\" \"classic_bike\" \"classic_bike\" \"classic_bike\" ...\n",
      " $ started_at        : POSIXct[1:115609], format: \"2022-02-19 18:08:41\" \"2022-02-20 17:41:30\" ...\n",
      " $ ended_at          : POSIXct[1:115609], format: \"2022-02-19 18:23:56\" \"2022-02-20 17:45:56\" ...\n",
      " $ start_station_name: chr [1:115609] \"State St & Randolph St\" \"Halsted St & Wrightwood Ave\" \"State St & Randolph St\" \"Southport Ave & Waveland Ave\" ...\n",
      " $ start_station_id  : chr [1:115609] \"TA1305000029\" \"TA1309000061\" \"TA1305000029\" \"13235\" ...\n",
      " $ end_station_name  : chr [1:115609] \"Clark St & Lincoln Ave\" \"Southport Ave & Wrightwood Ave\" \"Canal St & Adams St\" \"Broadway & Sheridan Rd\" ...\n",
      " $ end_station_id    : chr [1:115609] \"13179\" \"TA1307000113\" \"13011\" \"13323\" ...\n",
      " $ start_lat         : num [1:115609] 41.9 41.9 41.9 41.9 41.9 ...\n",
      " $ start_lng         : num [1:115609] -87.6 -87.6 -87.6 -87.7 -87.6 ...\n",
      " $ end_lat           : num [1:115609] 41.9 41.9 41.9 42 41.9 ...\n",
      " $ end_lng           : num [1:115609] -87.6 -87.7 -87.6 -87.6 -87.6 ...\n",
      " $ member_casual     : chr [1:115609] \"member\" \"member\" \"member\" \"member\" ...\n",
      " - attr(*, \"spec\")=\n",
      "  .. cols(\n",
      "  ..   ride_id = \u001b[31mcol_character()\u001b[39m,\n",
      "  ..   rideable_type = \u001b[31mcol_character()\u001b[39m,\n",
      "  ..   started_at = \u001b[34mcol_datetime(format = \"\")\u001b[39m,\n",
      "  ..   ended_at = \u001b[34mcol_datetime(format = \"\")\u001b[39m,\n",
      "  ..   start_station_name = \u001b[31mcol_character()\u001b[39m,\n",
      "  ..   start_station_id = \u001b[31mcol_character()\u001b[39m,\n",
      "  ..   end_station_name = \u001b[31mcol_character()\u001b[39m,\n",
      "  ..   end_station_id = \u001b[31mcol_character()\u001b[39m,\n",
      "  ..   start_lat = \u001b[32mcol_double()\u001b[39m,\n",
      "  ..   start_lng = \u001b[32mcol_double()\u001b[39m,\n",
      "  ..   end_lat = \u001b[32mcol_double()\u001b[39m,\n",
      "  ..   end_lng = \u001b[32mcol_double()\u001b[39m,\n",
      "  ..   member_casual = \u001b[31mcol_character()\u001b[39m\n",
      "  .. )\n",
      " - attr(*, \"problems\")=<externalptr> \n",
      "spec_tbl_df [284,042 × 13] (S3: spec_tbl_df/tbl_df/tbl/data.frame)\n",
      " $ ride_id           : chr [1:284042] \"47EC0A7F82E65D52\" \"8494861979B0F477\" \"EFE527AF80B66109\" \"9F446FD9DEE3F389\" ...\n",
      " $ rideable_type     : chr [1:284042] \"classic_bike\" \"electric_bike\" \"classic_bike\" \"classic_bike\" ...\n",
      " $ started_at        : POSIXct[1:284042], format: \"2022-03-21 13:45:01\" \"2022-03-16 09:37:16\" ...\n",
      " $ ended_at          : POSIXct[1:284042], format: \"2022-03-21 13:51:18\" \"2022-03-16 09:43:34\" ...\n",
      " $ start_station_name: chr [1:284042] \"Wabash Ave & Wacker Pl\" \"Michigan Ave & Oak St\" \"Broadway & Berwyn Ave\" \"Wabash Ave & Wacker Pl\" ...\n",
      " $ start_station_id  : chr [1:284042] \"TA1307000131\" \"13042\" \"13109\" \"TA1307000131\" ...\n",
      " $ end_station_name  : chr [1:284042] \"Kingsbury St & Kinzie St\" \"Orleans St & Chestnut St (NEXT Apts)\" \"Broadway & Ridge Ave\" \"Franklin St & Jackson Blvd\" ...\n",
      " $ end_station_id    : chr [1:284042] \"KA1503000043\" \"620\" \"15578\" \"TA1305000025\" ...\n",
      " $ start_lat         : num [1:284042] 41.9 41.9 42 41.9 41.9 ...\n",
      " $ start_lng         : num [1:284042] -87.6 -87.6 -87.7 -87.6 -87.6 ...\n",
      " $ end_lat           : num [1:284042] 41.9 41.9 42 41.9 41.9 ...\n",
      " $ end_lng           : num [1:284042] -87.6 -87.6 -87.7 -87.6 -87.7 ...\n",
      " $ member_casual     : chr [1:284042] \"member\" \"member\" \"member\" \"member\" ...\n",
      " - attr(*, \"spec\")=\n",
      "  .. cols(\n",
      "  ..   ride_id = \u001b[31mcol_character()\u001b[39m,\n",
      "  ..   rideable_type = \u001b[31mcol_character()\u001b[39m,\n",
      "  ..   started_at = \u001b[34mcol_datetime(format = \"\")\u001b[39m,\n",
      "  ..   ended_at = \u001b[34mcol_datetime(format = \"\")\u001b[39m,\n",
      "  ..   start_station_name = \u001b[31mcol_character()\u001b[39m,\n",
      "  ..   start_station_id = \u001b[31mcol_character()\u001b[39m,\n",
      "  ..   end_station_name = \u001b[31mcol_character()\u001b[39m,\n",
      "  ..   end_station_id = \u001b[31mcol_character()\u001b[39m,\n",
      "  ..   start_lat = \u001b[32mcol_double()\u001b[39m,\n",
      "  ..   start_lng = \u001b[32mcol_double()\u001b[39m,\n",
      "  ..   end_lat = \u001b[32mcol_double()\u001b[39m,\n",
      "  ..   end_lng = \u001b[32mcol_double()\u001b[39m,\n",
      "  ..   member_casual = \u001b[31mcol_character()\u001b[39m\n",
      "  .. )\n",
      " - attr(*, \"problems\")=<externalptr> \n",
      "spec_tbl_df [371,249 × 13] (S3: spec_tbl_df/tbl_df/tbl/data.frame)\n",
      " $ ride_id           : chr [1:371249] \"3564070EEFD12711\" \"0B820C7FCF22F489\" \"89EEEE32293F07FF\" \"84D4751AEB31888D\" ...\n",
      " $ rideable_type     : chr [1:371249] \"electric_bike\" \"classic_bike\" \"classic_bike\" \"classic_bike\" ...\n",
      " $ started_at        : POSIXct[1:371249], format: \"2022-04-06 17:42:48\" \"2022-04-24 19:23:07\" ...\n",
      " $ ended_at          : POSIXct[1:371249], format: \"2022-04-06 17:54:36\" \"2022-04-24 19:43:17\" ...\n",
      " $ start_station_name: chr [1:371249] \"Paulina St & Howard St\" \"Wentworth Ave & Cermak Rd\" \"Halsted St & Polk St\" \"Wentworth Ave & Cermak Rd\" ...\n",
      " $ start_station_id  : chr [1:371249] \"515\" \"13075\" \"TA1307000121\" \"13075\" ...\n",
      " $ end_station_name  : chr [1:371249] \"University Library (NU)\" \"Green St & Madison St\" \"Green St & Madison St\" \"Delano Ct & Roosevelt Rd\" ...\n",
      " $ end_station_id    : chr [1:371249] \"605\" \"TA1307000120\" \"TA1307000120\" \"KA1706005007\" ...\n",
      " $ start_lat         : num [1:371249] 42 41.9 41.9 41.9 41.9 ...\n",
      " $ start_lng         : num [1:371249] -87.7 -87.6 -87.6 -87.6 -87.6 ...\n",
      " $ end_lat           : num [1:371249] 42.1 41.9 41.9 41.9 41.9 ...\n",
      " $ end_lng           : num [1:371249] -87.7 -87.6 -87.6 -87.6 -87.6 ...\n",
      " $ member_casual     : chr [1:371249] \"member\" \"member\" \"member\" \"casual\" ...\n",
      " - attr(*, \"spec\")=\n",
      "  .. cols(\n",
      "  ..   ride_id = \u001b[31mcol_character()\u001b[39m,\n",
      "  ..   rideable_type = \u001b[31mcol_character()\u001b[39m,\n",
      "  ..   started_at = \u001b[34mcol_datetime(format = \"\")\u001b[39m,\n",
      "  ..   ended_at = \u001b[34mcol_datetime(format = \"\")\u001b[39m,\n",
      "  ..   start_station_name = \u001b[31mcol_character()\u001b[39m,\n",
      "  ..   start_station_id = \u001b[31mcol_character()\u001b[39m,\n",
      "  ..   end_station_name = \u001b[31mcol_character()\u001b[39m,\n",
      "  ..   end_station_id = \u001b[31mcol_character()\u001b[39m,\n",
      "  ..   start_lat = \u001b[32mcol_double()\u001b[39m,\n",
      "  ..   start_lng = \u001b[32mcol_double()\u001b[39m,\n",
      "  ..   end_lat = \u001b[32mcol_double()\u001b[39m,\n",
      "  ..   end_lng = \u001b[32mcol_double()\u001b[39m,\n",
      "  ..   member_casual = \u001b[31mcol_character()\u001b[39m\n",
      "  .. )\n",
      " - attr(*, \"problems\")=<externalptr> \n",
      "spec_tbl_df [634,858 × 13] (S3: spec_tbl_df/tbl_df/tbl/data.frame)\n",
      " $ ride_id           : chr [1:634858] \"EC2DE40644C6B0F4\" \"1C31AD03897EE385\" \"1542FBEC830415CF\" \"6FF59852924528F8\" ...\n",
      " $ rideable_type     : chr [1:634858] \"classic_bike\" \"classic_bike\" \"classic_bike\" \"classic_bike\" ...\n",
      " $ started_at        : POSIXct[1:634858], format: \"2022-05-23 23:06:58\" \"2022-05-11 08:53:28\" ...\n",
      " $ ended_at          : POSIXct[1:634858], format: \"2022-05-23 23:40:19\" \"2022-05-11 09:31:22\" ...\n",
      " $ start_station_name: chr [1:634858] \"Wabash Ave & Grand Ave\" \"DuSable Lake Shore Dr & Monroe St\" \"Clinton St & Madison St\" \"Clinton St & Madison St\" ...\n",
      " $ start_station_id  : chr [1:634858] \"TA1307000117\" \"13300\" \"TA1305000032\" \"TA1305000032\" ...\n",
      " $ end_station_name  : chr [1:634858] \"Halsted St & Roscoe St\" \"Field Blvd & South Water St\" \"Wood St & Milwaukee Ave\" \"Clark St & Randolph St\" ...\n",
      " $ end_station_id    : chr [1:634858] \"TA1309000025\" \"15534\" \"13221\" \"TA1305000030\" ...\n",
      " $ start_lat         : num [1:634858] 41.9 41.9 41.9 41.9 41.9 ...\n",
      " $ start_lng         : num [1:634858] -87.6 -87.6 -87.6 -87.6 -87.6 ...\n",
      " $ end_lat           : num [1:634858] 41.9 41.9 41.9 41.9 41.9 ...\n",
      " $ end_lng           : num [1:634858] -87.6 -87.6 -87.7 -87.6 -87.7 ...\n",
      " $ member_casual     : chr [1:634858] \"member\" \"member\" \"member\" \"member\" ...\n",
      " - attr(*, \"spec\")=\n",
      "  .. cols(\n",
      "  ..   ride_id = \u001b[31mcol_character()\u001b[39m,\n",
      "  ..   rideable_type = \u001b[31mcol_character()\u001b[39m,\n",
      "  ..   started_at = \u001b[34mcol_datetime(format = \"\")\u001b[39m,\n",
      "  ..   ended_at = \u001b[34mcol_datetime(format = \"\")\u001b[39m,\n",
      "  ..   start_station_name = \u001b[31mcol_character()\u001b[39m,\n",
      "  ..   start_station_id = \u001b[31mcol_character()\u001b[39m,\n",
      "  ..   end_station_name = \u001b[31mcol_character()\u001b[39m,\n",
      "  ..   end_station_id = \u001b[31mcol_character()\u001b[39m,\n",
      "  ..   start_lat = \u001b[32mcol_double()\u001b[39m,\n",
      "  ..   start_lng = \u001b[32mcol_double()\u001b[39m,\n",
      "  ..   end_lat = \u001b[32mcol_double()\u001b[39m,\n",
      "  ..   end_lng = \u001b[32mcol_double()\u001b[39m,\n",
      "  ..   member_casual = \u001b[31mcol_character()\u001b[39m\n",
      "  .. )\n",
      " - attr(*, \"problems\")=<externalptr> \n",
      "spec_tbl_df [769,204 × 13] (S3: spec_tbl_df/tbl_df/tbl/data.frame)\n",
      " $ ride_id           : chr [1:769204] \"600CFD130D0FD2A4\" \"F5E6B5C1682C6464\" \"B6EB6D27BAD771D2\" \"C9C320375DE1D5C6\" ...\n",
      " $ rideable_type     : chr [1:769204] \"electric_bike\" \"electric_bike\" \"electric_bike\" \"electric_bike\" ...\n",
      " $ started_at        : POSIXct[1:769204], format: \"2022-06-30 17:27:53\" \"2022-06-30 18:39:52\" ...\n",
      " $ ended_at          : POSIXct[1:769204], format: \"2022-06-30 17:35:15\" \"2022-06-30 18:47:28\" ...\n",
      " $ start_station_name: chr [1:769204] NA NA NA NA ...\n",
      " $ start_station_id  : chr [1:769204] NA NA NA NA ...\n",
      " $ end_station_name  : chr [1:769204] NA NA NA NA ...\n",
      " $ end_station_id    : chr [1:769204] NA NA NA NA ...\n",
      " $ start_lat         : num [1:769204] 41.9 41.9 41.9 41.8 41.9 ...\n",
      " $ start_lng         : num [1:769204] -87.6 -87.6 -87.7 -87.7 -87.6 ...\n",
      " $ end_lat           : num [1:769204] 41.9 41.9 41.9 41.8 41.9 ...\n",
      " $ end_lng           : num [1:769204] -87.6 -87.6 -87.6 -87.7 -87.6 ...\n",
      " $ member_casual     : chr [1:769204] \"casual\" \"casual\" \"casual\" \"casual\" ...\n",
      " - attr(*, \"spec\")=\n",
      "  .. cols(\n",
      "  ..   ride_id = \u001b[31mcol_character()\u001b[39m,\n",
      "  ..   rideable_type = \u001b[31mcol_character()\u001b[39m,\n",
      "  ..   started_at = \u001b[34mcol_datetime(format = \"\")\u001b[39m,\n",
      "  ..   ended_at = \u001b[34mcol_datetime(format = \"\")\u001b[39m,\n",
      "  ..   start_station_name = \u001b[31mcol_character()\u001b[39m,\n",
      "  ..   start_station_id = \u001b[31mcol_character()\u001b[39m,\n",
      "  ..   end_station_name = \u001b[31mcol_character()\u001b[39m,\n",
      "  ..   end_station_id = \u001b[31mcol_character()\u001b[39m,\n",
      "  ..   start_lat = \u001b[32mcol_double()\u001b[39m,\n",
      "  ..   start_lng = \u001b[32mcol_double()\u001b[39m,\n",
      "  ..   end_lat = \u001b[32mcol_double()\u001b[39m,\n",
      "  ..   end_lng = \u001b[32mcol_double()\u001b[39m,\n",
      "  ..   member_casual = \u001b[31mcol_character()\u001b[39m\n",
      "  .. )\n",
      " - attr(*, \"problems\")=<externalptr> \n",
      "spec_tbl_df [823,488 × 13] (S3: spec_tbl_df/tbl_df/tbl/data.frame)\n",
      " $ ride_id           : chr [1:823488] \"954144C2F67B1932\" \"292E027607D218B6\" \"57765852588AD6E0\" \"B5B6BE44314590E6\" ...\n",
      " $ rideable_type     : chr [1:823488] \"classic_bike\" \"classic_bike\" \"classic_bike\" \"classic_bike\" ...\n",
      " $ started_at        : POSIXct[1:823488], format: \"2022-07-05 08:12:47\" \"2022-07-26 12:53:38\" ...\n",
      " $ ended_at          : POSIXct[1:823488], format: \"2022-07-05 08:24:32\" \"2022-07-26 12:55:31\" ...\n",
      " $ start_station_name: chr [1:823488] \"Ashland Ave & Blackhawk St\" \"Buckingham Fountain (Temp)\" \"Buckingham Fountain (Temp)\" \"Buckingham Fountain (Temp)\" ...\n",
      " $ start_station_id  : chr [1:823488] \"13224\" \"15541\" \"15541\" \"15541\" ...\n",
      " $ end_station_name  : chr [1:823488] \"Kingsbury St & Kinzie St\" \"Michigan Ave & 8th St\" \"Michigan Ave & 8th St\" \"Woodlawn Ave & 55th St\" ...\n",
      " $ end_station_id    : chr [1:823488] \"KA1503000043\" \"623\" \"623\" \"TA1307000164\" ...\n",
      " $ start_lat         : num [1:823488] 41.9 41.9 41.9 41.9 41.9 ...\n",
      " $ start_lng         : num [1:823488] -87.7 -87.6 -87.6 -87.6 -87.6 ...\n",
      " $ end_lat           : num [1:823488] 41.9 41.9 41.9 41.8 41.9 ...\n",
      " $ end_lng           : num [1:823488] -87.6 -87.6 -87.6 -87.6 -87.7 ...\n",
      " $ member_casual     : chr [1:823488] \"member\" \"casual\" \"casual\" \"casual\" ...\n",
      " - attr(*, \"spec\")=\n",
      "  .. cols(\n",
      "  ..   ride_id = \u001b[31mcol_character()\u001b[39m,\n",
      "  ..   rideable_type = \u001b[31mcol_character()\u001b[39m,\n",
      "  ..   started_at = \u001b[34mcol_datetime(format = \"\")\u001b[39m,\n",
      "  ..   ended_at = \u001b[34mcol_datetime(format = \"\")\u001b[39m,\n",
      "  ..   start_station_name = \u001b[31mcol_character()\u001b[39m,\n",
      "  ..   start_station_id = \u001b[31mcol_character()\u001b[39m,\n",
      "  ..   end_station_name = \u001b[31mcol_character()\u001b[39m,\n",
      "  ..   end_station_id = \u001b[31mcol_character()\u001b[39m,\n",
      "  ..   start_lat = \u001b[32mcol_double()\u001b[39m,\n",
      "  ..   start_lng = \u001b[32mcol_double()\u001b[39m,\n",
      "  ..   end_lat = \u001b[32mcol_double()\u001b[39m,\n",
      "  ..   end_lng = \u001b[32mcol_double()\u001b[39m,\n",
      "  ..   member_casual = \u001b[31mcol_character()\u001b[39m\n",
      "  .. )\n",
      " - attr(*, \"problems\")=<externalptr> \n"
     ]
    }
   ],
   "source": [
    "str(aug2021)\n",
    "str(sep2021)\n",
    "str(oct2021)\n",
    "str(nov2021)\n",
    "str(dec2021)\n",
    "str(jan2022)\n",
    "str(feb2022)\n",
    "str(mar2022)\n",
    "str(apr2022)\n",
    "str(may2022)\n",
    "str(jun2022)\n",
    "str(jul2022)"
   ]
  },
  {
   "cell_type": "markdown",
   "id": "73d13253",
   "metadata": {
    "papermill": {
     "duration": 0.014295,
     "end_time": "2022-08-31T23:57:30.815259",
     "exception": false,
     "start_time": "2022-08-31T23:57:30.800964",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "**The datasets will be combined into a single dataset file:**"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 4,
   "id": "a771b4cb",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2022-08-31T23:57:30.847366Z",
     "iopub.status.busy": "2022-08-31T23:57:30.845413Z",
     "iopub.status.idle": "2022-08-31T23:57:38.190857Z",
     "shell.execute_reply": "2022-08-31T23:57:38.189054Z"
    },
    "papermill": {
     "duration": 7.364151,
     "end_time": "2022-08-31T23:57:38.193489",
     "exception": false,
     "start_time": "2022-08-31T23:57:30.829338",
     "status": "completed"
    },
    "tags": []
   },
   "outputs": [],
   "source": [
    "trips <- bind_rows(aug2021, sep2021, oct2021, nov2021, dec2021, jan2022,\n",
    "                   feb2022, mar2022, apr2022, may2022, jun2022, jul2022)"
   ]
  },
  {
   "cell_type": "markdown",
   "id": "6efe2e9e",
   "metadata": {
    "papermill": {
     "duration": 0.014414,
     "end_time": "2022-08-31T23:57:38.221967",
     "exception": false,
     "start_time": "2022-08-31T23:57:38.207553",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "#### Data Cleaning"
   ]
  },
  {
   "cell_type": "markdown",
   "id": "c5a4ddc7",
   "metadata": {
    "papermill": {
     "duration": 0.014158,
     "end_time": "2022-08-31T23:57:38.250171",
     "exception": false,
     "start_time": "2022-08-31T23:57:38.236013",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "**Let's have a look at the combined dataset file:**"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 5,
   "id": "fa6750c9",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2022-08-31T23:57:38.282054Z",
     "iopub.status.busy": "2022-08-31T23:57:38.280473Z",
     "iopub.status.idle": "2022-08-31T23:57:38.306306Z",
     "shell.execute_reply": "2022-08-31T23:57:38.304574Z"
    },
    "papermill": {
     "duration": 0.04432,
     "end_time": "2022-08-31T23:57:38.308614",
     "exception": false,
     "start_time": "2022-08-31T23:57:38.264294",
     "status": "completed"
    },
    "tags": []
   },
   "outputs": [
    {
     "data": {
      "text/html": [
       "<style>\n",
       ".list-inline {list-style: none; margin:0; padding: 0}\n",
       ".list-inline>li {display: inline-block}\n",
       ".list-inline>li:not(:last-child)::after {content: \"\\00b7\"; padding: 0 .5ex}\n",
       "</style>\n",
       "<ol class=list-inline><li>5901463</li><li>13</li></ol>\n"
      ],
      "text/latex": [
       "\\begin{enumerate*}\n",
       "\\item 5901463\n",
       "\\item 13\n",
       "\\end{enumerate*}\n"
      ],
      "text/markdown": [
       "1. 5901463\n",
       "2. 13\n",
       "\n",
       "\n"
      ],
      "text/plain": [
       "[1] 5901463      13"
      ]
     },
     "metadata": {},
     "output_type": "display_data"
    },
    {
     "data": {
      "text/html": [
       "<style>\n",
       ".list-inline {list-style: none; margin:0; padding: 0}\n",
       ".list-inline>li {display: inline-block}\n",
       ".list-inline>li:not(:last-child)::after {content: \"\\00b7\"; padding: 0 .5ex}\n",
       "</style>\n",
       "<ol class=list-inline><li>'ride_id'</li><li>'rideable_type'</li><li>'started_at'</li><li>'ended_at'</li><li>'start_station_name'</li><li>'start_station_id'</li><li>'end_station_name'</li><li>'end_station_id'</li><li>'start_lat'</li><li>'start_lng'</li><li>'end_lat'</li><li>'end_lng'</li><li>'member_casual'</li></ol>\n"
      ],
      "text/latex": [
       "\\begin{enumerate*}\n",
       "\\item 'ride\\_id'\n",
       "\\item 'rideable\\_type'\n",
       "\\item 'started\\_at'\n",
       "\\item 'ended\\_at'\n",
       "\\item 'start\\_station\\_name'\n",
       "\\item 'start\\_station\\_id'\n",
       "\\item 'end\\_station\\_name'\n",
       "\\item 'end\\_station\\_id'\n",
       "\\item 'start\\_lat'\n",
       "\\item 'start\\_lng'\n",
       "\\item 'end\\_lat'\n",
       "\\item 'end\\_lng'\n",
       "\\item 'member\\_casual'\n",
       "\\end{enumerate*}\n"
      ],
      "text/markdown": [
       "1. 'ride_id'\n",
       "2. 'rideable_type'\n",
       "3. 'started_at'\n",
       "4. 'ended_at'\n",
       "5. 'start_station_name'\n",
       "6. 'start_station_id'\n",
       "7. 'end_station_name'\n",
       "8. 'end_station_id'\n",
       "9. 'start_lat'\n",
       "10. 'start_lng'\n",
       "11. 'end_lat'\n",
       "12. 'end_lng'\n",
       "13. 'member_casual'\n",
       "\n",
       "\n"
      ],
      "text/plain": [
       " [1] \"ride_id\"            \"rideable_type\"      \"started_at\"        \n",
       " [4] \"ended_at\"           \"start_station_name\" \"start_station_id\"  \n",
       " [7] \"end_station_name\"   \"end_station_id\"     \"start_lat\"         \n",
       "[10] \"start_lng\"          \"end_lat\"            \"end_lng\"           \n",
       "[13] \"member_casual\"     "
      ]
     },
     "metadata": {},
     "output_type": "display_data"
    }
   ],
   "source": [
    "dim(trips)\n",
    "\n",
    "colnames(trips)"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 6,
   "id": "7a3d92dd",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2022-08-31T23:57:38.342990Z",
     "iopub.status.busy": "2022-08-31T23:57:38.341336Z",
     "iopub.status.idle": "2022-08-31T23:57:38.380809Z",
     "shell.execute_reply": "2022-08-31T23:57:38.378383Z"
    },
    "papermill": {
     "duration": 0.061578,
     "end_time": "2022-08-31T23:57:38.384568",
     "exception": false,
     "start_time": "2022-08-31T23:57:38.322990",
     "status": "completed"
    },
    "tags": []
   },
   "outputs": [
    {
     "name": "stdout",
     "output_type": "stream",
     "text": [
      "spec_tbl_df [5,901,463 × 13] (S3: spec_tbl_df/tbl_df/tbl/data.frame)\n",
      " $ ride_id           : chr [1:5901463] \"99103BB87CC6C1BB\" \"EAFCCCFB0A3FC5A1\" \"9EF4F46C57AD234D\" \"5834D3208BFAF1DA\" ...\n",
      " $ rideable_type     : chr [1:5901463] \"electric_bike\" \"electric_bike\" \"electric_bike\" \"electric_bike\" ...\n",
      " $ started_at        : POSIXct[1:5901463], format: \"2021-08-10 17:15:49\" \"2021-08-10 17:23:14\" ...\n",
      " $ ended_at          : POSIXct[1:5901463], format: \"2021-08-10 17:22:44\" \"2021-08-10 17:39:24\" ...\n",
      " $ start_station_name: chr [1:5901463] NA NA NA NA ...\n",
      " $ start_station_id  : chr [1:5901463] NA NA NA NA ...\n",
      " $ end_station_name  : chr [1:5901463] NA NA NA NA ...\n",
      " $ end_station_id    : chr [1:5901463] NA NA NA NA ...\n",
      " $ start_lat         : num [1:5901463] 41.8 41.8 42 42 41.8 ...\n",
      " $ start_lng         : num [1:5901463] -87.7 -87.7 -87.7 -87.7 -87.6 ...\n",
      " $ end_lat           : num [1:5901463] 41.8 41.8 42 42 41.8 ...\n",
      " $ end_lng           : num [1:5901463] -87.7 -87.6 -87.7 -87.7 -87.6 ...\n",
      " $ member_casual     : chr [1:5901463] \"member\" \"member\" \"member\" \"member\" ...\n",
      " - attr(*, \"spec\")=\n",
      "  .. cols(\n",
      "  ..   ride_id = \u001b[31mcol_character()\u001b[39m,\n",
      "  ..   rideable_type = \u001b[31mcol_character()\u001b[39m,\n",
      "  ..   started_at = \u001b[34mcol_datetime(format = \"\")\u001b[39m,\n",
      "  ..   ended_at = \u001b[34mcol_datetime(format = \"\")\u001b[39m,\n",
      "  ..   start_station_name = \u001b[31mcol_character()\u001b[39m,\n",
      "  ..   start_station_id = \u001b[31mcol_character()\u001b[39m,\n",
      "  ..   end_station_name = \u001b[31mcol_character()\u001b[39m,\n",
      "  ..   end_station_id = \u001b[31mcol_character()\u001b[39m,\n",
      "  ..   start_lat = \u001b[32mcol_double()\u001b[39m,\n",
      "  ..   start_lng = \u001b[32mcol_double()\u001b[39m,\n",
      "  ..   end_lat = \u001b[32mcol_double()\u001b[39m,\n",
      "  ..   end_lng = \u001b[32mcol_double()\u001b[39m,\n",
      "  ..   member_casual = \u001b[31mcol_character()\u001b[39m\n",
      "  .. )\n",
      " - attr(*, \"problems\")=<externalptr> \n"
     ]
    }
   ],
   "source": [
    "str(trips)"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 7,
   "id": "37724cfa",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2022-08-31T23:57:38.417960Z",
     "iopub.status.busy": "2022-08-31T23:57:38.416371Z",
     "iopub.status.idle": "2022-08-31T23:57:43.108187Z",
     "shell.execute_reply": "2022-08-31T23:57:43.106428Z"
    },
    "papermill": {
     "duration": 4.71129,
     "end_time": "2022-08-31T23:57:43.111008",
     "exception": false,
     "start_time": "2022-08-31T23:57:38.399718",
     "status": "completed"
    },
    "tags": []
   },
   "outputs": [
    {
     "data": {
      "text/plain": [
       "   ride_id          rideable_type        started_at                 \n",
       " Length:5901463     Length:5901463     Min.   :2021-08-01 00:00:04  \n",
       " Class :character   Class :character   1st Qu.:2021-09-27 12:35:12  \n",
       " Mode  :character   Mode  :character   Median :2022-02-14 14:10:08  \n",
       "                                       Mean   :2022-01-31 21:50:42  \n",
       "                                       3rd Qu.:2022-06-05 15:29:40  \n",
       "                                       Max.   :2022-07-31 23:59:58  \n",
       "                                                                    \n",
       "    ended_at                   start_station_name start_station_id  \n",
       " Min.   :2021-08-01 00:03:11   Length:5901463     Length:5901463    \n",
       " 1st Qu.:2021-09-27 12:54:02   Class :character   Class :character  \n",
       " Median :2022-02-14 14:20:23   Mode  :character   Mode  :character  \n",
       " Mean   :2022-01-31 22:10:35                                        \n",
       " 3rd Qu.:2022-06-05 15:54:48                                        \n",
       " Max.   :2022-08-04 13:53:01                                        \n",
       "                                                                    \n",
       " end_station_name   end_station_id       start_lat       start_lng     \n",
       " Length:5901463     Length:5901463     Min.   :41.64   Min.   :-87.84  \n",
       " Class :character   Class :character   1st Qu.:41.88   1st Qu.:-87.66  \n",
       " Mode  :character   Mode  :character   Median :41.90   Median :-87.64  \n",
       "                                       Mean   :41.90   Mean   :-87.65  \n",
       "                                       3rd Qu.:41.93   3rd Qu.:-87.63  \n",
       "                                       Max.   :45.64   Max.   :-73.80  \n",
       "                                                                       \n",
       "    end_lat         end_lng       member_casual     \n",
       " Min.   :41.39   Min.   :-88.97   Length:5901463    \n",
       " 1st Qu.:41.88   1st Qu.:-87.66   Class :character  \n",
       " Median :41.90   Median :-87.64   Mode  :character  \n",
       " Mean   :41.90   Mean   :-87.65                     \n",
       " 3rd Qu.:41.93   3rd Qu.:-87.63                     \n",
       " Max.   :42.37   Max.   :-87.50                     \n",
       " NA's   :5590    NA's   :5590                       "
      ]
     },
     "metadata": {},
     "output_type": "display_data"
    }
   ],
   "source": [
    "summary(trips)"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 8,
   "id": "568e37a3",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2022-08-31T23:57:43.144870Z",
     "iopub.status.busy": "2022-08-31T23:57:43.142938Z",
     "iopub.status.idle": "2022-08-31T23:57:43.177078Z",
     "shell.execute_reply": "2022-08-31T23:57:43.174719Z"
    },
    "papermill": {
     "duration": 0.054192,
     "end_time": "2022-08-31T23:57:43.180103",
     "exception": false,
     "start_time": "2022-08-31T23:57:43.125911",
     "status": "completed"
    },
    "tags": []
   },
   "outputs": [
    {
     "data": {
      "text/html": [
       "<table class=\"dataframe\">\n",
       "<caption>A tibble: 6 × 13</caption>\n",
       "<thead>\n",
       "\t<tr><th scope=col>ride_id</th><th scope=col>rideable_type</th><th scope=col>started_at</th><th scope=col>ended_at</th><th scope=col>start_station_name</th><th scope=col>start_station_id</th><th scope=col>end_station_name</th><th scope=col>end_station_id</th><th scope=col>start_lat</th><th scope=col>start_lng</th><th scope=col>end_lat</th><th scope=col>end_lng</th><th scope=col>member_casual</th></tr>\n",
       "\t<tr><th scope=col>&lt;chr&gt;</th><th scope=col>&lt;chr&gt;</th><th scope=col>&lt;dttm&gt;</th><th scope=col>&lt;dttm&gt;</th><th scope=col>&lt;chr&gt;</th><th scope=col>&lt;chr&gt;</th><th scope=col>&lt;chr&gt;</th><th scope=col>&lt;chr&gt;</th><th scope=col>&lt;dbl&gt;</th><th scope=col>&lt;dbl&gt;</th><th scope=col>&lt;dbl&gt;</th><th scope=col>&lt;dbl&gt;</th><th scope=col>&lt;chr&gt;</th></tr>\n",
       "</thead>\n",
       "<tbody>\n",
       "\t<tr><td>99103BB87CC6C1BB</td><td>electric_bike</td><td>2021-08-10 17:15:49</td><td>2021-08-10 17:22:44</td><td>NA</td><td>NA</td><td>NA</td><td>NA</td><td>41.77</td><td>-87.68</td><td>41.77</td><td>-87.68</td><td>member</td></tr>\n",
       "\t<tr><td>EAFCCCFB0A3FC5A1</td><td>electric_bike</td><td>2021-08-10 17:23:14</td><td>2021-08-10 17:39:24</td><td>NA</td><td>NA</td><td>NA</td><td>NA</td><td>41.77</td><td>-87.68</td><td>41.77</td><td>-87.63</td><td>member</td></tr>\n",
       "\t<tr><td>9EF4F46C57AD234D</td><td>electric_bike</td><td>2021-08-21 02:34:23</td><td>2021-08-21 02:50:36</td><td>NA</td><td>NA</td><td>NA</td><td>NA</td><td>41.95</td><td>-87.65</td><td>41.97</td><td>-87.66</td><td>member</td></tr>\n",
       "\t<tr><td>5834D3208BFAF1DA</td><td>electric_bike</td><td>2021-08-21 06:52:55</td><td>2021-08-21 07:08:13</td><td>NA</td><td>NA</td><td>NA</td><td>NA</td><td>41.97</td><td>-87.67</td><td>41.95</td><td>-87.65</td><td>member</td></tr>\n",
       "\t<tr><td>CD825CB87ED1D096</td><td>electric_bike</td><td>2021-08-19 11:55:29</td><td>2021-08-19 12:04:11</td><td>NA</td><td>NA</td><td>NA</td><td>NA</td><td>41.79</td><td>-87.60</td><td>41.77</td><td>-87.62</td><td>member</td></tr>\n",
       "\t<tr><td>612F12C94A964F3E</td><td>electric_bike</td><td>2021-08-19 12:41:12</td><td>2021-08-19 12:47:47</td><td>NA</td><td>NA</td><td>NA</td><td>NA</td><td>41.81</td><td>-87.61</td><td>41.80</td><td>-87.60</td><td>member</td></tr>\n",
       "</tbody>\n",
       "</table>\n"
      ],
      "text/latex": [
       "A tibble: 6 × 13\n",
       "\\begin{tabular}{lllllllllllll}\n",
       " ride\\_id & rideable\\_type & started\\_at & ended\\_at & start\\_station\\_name & start\\_station\\_id & end\\_station\\_name & end\\_station\\_id & start\\_lat & start\\_lng & end\\_lat & end\\_lng & member\\_casual\\\\\n",
       " <chr> & <chr> & <dttm> & <dttm> & <chr> & <chr> & <chr> & <chr> & <dbl> & <dbl> & <dbl> & <dbl> & <chr>\\\\\n",
       "\\hline\n",
       "\t 99103BB87CC6C1BB & electric\\_bike & 2021-08-10 17:15:49 & 2021-08-10 17:22:44 & NA & NA & NA & NA & 41.77 & -87.68 & 41.77 & -87.68 & member\\\\\n",
       "\t EAFCCCFB0A3FC5A1 & electric\\_bike & 2021-08-10 17:23:14 & 2021-08-10 17:39:24 & NA & NA & NA & NA & 41.77 & -87.68 & 41.77 & -87.63 & member\\\\\n",
       "\t 9EF4F46C57AD234D & electric\\_bike & 2021-08-21 02:34:23 & 2021-08-21 02:50:36 & NA & NA & NA & NA & 41.95 & -87.65 & 41.97 & -87.66 & member\\\\\n",
       "\t 5834D3208BFAF1DA & electric\\_bike & 2021-08-21 06:52:55 & 2021-08-21 07:08:13 & NA & NA & NA & NA & 41.97 & -87.67 & 41.95 & -87.65 & member\\\\\n",
       "\t CD825CB87ED1D096 & electric\\_bike & 2021-08-19 11:55:29 & 2021-08-19 12:04:11 & NA & NA & NA & NA & 41.79 & -87.60 & 41.77 & -87.62 & member\\\\\n",
       "\t 612F12C94A964F3E & electric\\_bike & 2021-08-19 12:41:12 & 2021-08-19 12:47:47 & NA & NA & NA & NA & 41.81 & -87.61 & 41.80 & -87.60 & member\\\\\n",
       "\\end{tabular}\n"
      ],
      "text/markdown": [
       "\n",
       "A tibble: 6 × 13\n",
       "\n",
       "| ride_id &lt;chr&gt; | rideable_type &lt;chr&gt; | started_at &lt;dttm&gt; | ended_at &lt;dttm&gt; | start_station_name &lt;chr&gt; | start_station_id &lt;chr&gt; | end_station_name &lt;chr&gt; | end_station_id &lt;chr&gt; | start_lat &lt;dbl&gt; | start_lng &lt;dbl&gt; | end_lat &lt;dbl&gt; | end_lng &lt;dbl&gt; | member_casual &lt;chr&gt; |\n",
       "|---|---|---|---|---|---|---|---|---|---|---|---|---|\n",
       "| 99103BB87CC6C1BB | electric_bike | 2021-08-10 17:15:49 | 2021-08-10 17:22:44 | NA | NA | NA | NA | 41.77 | -87.68 | 41.77 | -87.68 | member |\n",
       "| EAFCCCFB0A3FC5A1 | electric_bike | 2021-08-10 17:23:14 | 2021-08-10 17:39:24 | NA | NA | NA | NA | 41.77 | -87.68 | 41.77 | -87.63 | member |\n",
       "| 9EF4F46C57AD234D | electric_bike | 2021-08-21 02:34:23 | 2021-08-21 02:50:36 | NA | NA | NA | NA | 41.95 | -87.65 | 41.97 | -87.66 | member |\n",
       "| 5834D3208BFAF1DA | electric_bike | 2021-08-21 06:52:55 | 2021-08-21 07:08:13 | NA | NA | NA | NA | 41.97 | -87.67 | 41.95 | -87.65 | member |\n",
       "| CD825CB87ED1D096 | electric_bike | 2021-08-19 11:55:29 | 2021-08-19 12:04:11 | NA | NA | NA | NA | 41.79 | -87.60 | 41.77 | -87.62 | member |\n",
       "| 612F12C94A964F3E | electric_bike | 2021-08-19 12:41:12 | 2021-08-19 12:47:47 | NA | NA | NA | NA | 41.81 | -87.61 | 41.80 | -87.60 | member |\n",
       "\n"
      ],
      "text/plain": [
       "  ride_id          rideable_type started_at          ended_at           \n",
       "1 99103BB87CC6C1BB electric_bike 2021-08-10 17:15:49 2021-08-10 17:22:44\n",
       "2 EAFCCCFB0A3FC5A1 electric_bike 2021-08-10 17:23:14 2021-08-10 17:39:24\n",
       "3 9EF4F46C57AD234D electric_bike 2021-08-21 02:34:23 2021-08-21 02:50:36\n",
       "4 5834D3208BFAF1DA electric_bike 2021-08-21 06:52:55 2021-08-21 07:08:13\n",
       "5 CD825CB87ED1D096 electric_bike 2021-08-19 11:55:29 2021-08-19 12:04:11\n",
       "6 612F12C94A964F3E electric_bike 2021-08-19 12:41:12 2021-08-19 12:47:47\n",
       "  start_station_name start_station_id end_station_name end_station_id start_lat\n",
       "1 NA                 NA               NA               NA             41.77    \n",
       "2 NA                 NA               NA               NA             41.77    \n",
       "3 NA                 NA               NA               NA             41.95    \n",
       "4 NA                 NA               NA               NA             41.97    \n",
       "5 NA                 NA               NA               NA             41.79    \n",
       "6 NA                 NA               NA               NA             41.81    \n",
       "  start_lng end_lat end_lng member_casual\n",
       "1 -87.68    41.77   -87.68  member       \n",
       "2 -87.68    41.77   -87.63  member       \n",
       "3 -87.65    41.97   -87.66  member       \n",
       "4 -87.67    41.95   -87.65  member       \n",
       "5 -87.60    41.77   -87.62  member       \n",
       "6 -87.61    41.80   -87.60  member       "
      ]
     },
     "metadata": {},
     "output_type": "display_data"
    }
   ],
   "source": [
    "head(trips)"
   ]
  },
  {
   "cell_type": "markdown",
   "id": "043b2895",
   "metadata": {
    "papermill": {
     "duration": 0.015972,
     "end_time": "2022-08-31T23:57:43.210730",
     "exception": false,
     "start_time": "2022-08-31T23:57:43.194758",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "**As can be seen, there are 5901463 rows and 13 columns in the dataset**"
   ]
  },
  {
   "cell_type": "markdown",
   "id": "a4a42093",
   "metadata": {
    "papermill": {
     "duration": 0.014953,
     "end_time": "2022-08-31T23:57:43.242392",
     "exception": false,
     "start_time": "2022-08-31T23:57:43.227439",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "**Before moving on to the analysis step, let's add some helper columns.\n",
    "We will add date columns (date, year, month, day, day of week), and a calculated column for trip duration**"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 9,
   "id": "e2ade6e9",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2022-08-31T23:57:43.276581Z",
     "iopub.status.busy": "2022-08-31T23:57:43.274816Z",
     "iopub.status.idle": "2022-08-31T23:57:54.725894Z",
     "shell.execute_reply": "2022-08-31T23:57:54.724025Z"
    },
    "papermill": {
     "duration": 11.472126,
     "end_time": "2022-08-31T23:57:54.729206",
     "exception": false,
     "start_time": "2022-08-31T23:57:43.257080",
     "status": "completed"
    },
    "tags": []
   },
   "outputs": [],
   "source": [
    "trips$date <- as.Date(trips$started_at)\n",
    "trips$month <- format(as.Date(trips$date), \"%m\")\n",
    "trips$day <- format(as.Date(trips$date), \"%d\")\n",
    "trips$year <- format(as.Date(trips$date), \"%Y\")\n",
    "trips$day_of_week <- format(as.Date(trips$date), \"%A\")"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 10,
   "id": "2d5242d9",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2022-08-31T23:57:54.762266Z",
     "iopub.status.busy": "2022-08-31T23:57:54.760787Z",
     "iopub.status.idle": "2022-08-31T23:57:54.820178Z",
     "shell.execute_reply": "2022-08-31T23:57:54.818412Z"
    },
    "papermill": {
     "duration": 0.078374,
     "end_time": "2022-08-31T23:57:54.822446",
     "exception": false,
     "start_time": "2022-08-31T23:57:54.744072",
     "status": "completed"
    },
    "tags": []
   },
   "outputs": [],
   "source": [
    "trips$duration <- difftime(trips$ended_at, trips$started_at)"
   ]
  },
  {
   "cell_type": "markdown",
   "id": "32b7a759",
   "metadata": {
    "papermill": {
     "duration": 0.015019,
     "end_time": "2022-08-31T23:57:54.852550",
     "exception": false,
     "start_time": "2022-08-31T23:57:54.837531",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "**Convert \"duration\" to numeric**"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 11,
   "id": "937cff6c",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2022-08-31T23:57:54.895123Z",
     "iopub.status.busy": "2022-08-31T23:57:54.893565Z",
     "iopub.status.idle": "2022-08-31T23:58:02.172579Z",
     "shell.execute_reply": "2022-08-31T23:58:02.170629Z"
    },
    "papermill": {
     "duration": 7.308768,
     "end_time": "2022-08-31T23:58:02.176610",
     "exception": false,
     "start_time": "2022-08-31T23:57:54.867842",
     "status": "completed"
    },
    "tags": []
   },
   "outputs": [],
   "source": [
    "trips$duration <- as.numeric(as.character(trips$duration))"
   ]
  },
  {
   "cell_type": "markdown",
   "id": "7c2a77a7",
   "metadata": {
    "papermill": {
     "duration": 0.015639,
     "end_time": "2022-08-31T23:58:02.207941",
     "exception": false,
     "start_time": "2022-08-31T23:58:02.192302",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "**Remove oultiers (negative and null trip durations, as well as those less than 1 minute and more than one full day)**"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 12,
   "id": "a2419b90",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2022-08-31T23:58:02.240722Z",
     "iopub.status.busy": "2022-08-31T23:58:02.239248Z",
     "iopub.status.idle": "2022-08-31T23:58:05.384960Z",
     "shell.execute_reply": "2022-08-31T23:58:05.383178Z"
    },
    "papermill": {
     "duration": 3.165883,
     "end_time": "2022-08-31T23:58:05.388407",
     "exception": false,
     "start_time": "2022-08-31T23:58:02.222524",
     "status": "completed"
    },
    "tags": []
   },
   "outputs": [],
   "source": [
    "trips <- trips[!is.na(trips$duration) & !is.nan(trips$duration) & !(trips$duration < 60) & !(trips$duration > 86400),]"
   ]
  },
  {
   "cell_type": "markdown",
   "id": "70f2551a",
   "metadata": {
    "papermill": {
     "duration": 0.014942,
     "end_time": "2022-08-31T23:58:05.418164",
     "exception": false,
     "start_time": "2022-08-31T23:58:05.403222",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "**Remove data from empty stations rows**"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 13,
   "id": "214d6879",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2022-08-31T23:58:05.451232Z",
     "iopub.status.busy": "2022-08-31T23:58:05.449687Z",
     "iopub.status.idle": "2022-08-31T23:58:09.212648Z",
     "shell.execute_reply": "2022-08-31T23:58:09.210864Z"
    },
    "papermill": {
     "duration": 3.78232,
     "end_time": "2022-08-31T23:58:09.215318",
     "exception": false,
     "start_time": "2022-08-31T23:58:05.432998",
     "status": "completed"
    },
    "tags": []
   },
   "outputs": [],
   "source": [
    "trips <- trips[!is.na(trips$start_station_name) & !is.na(trips$end_station_name) & !is.na(trips$start_station_id) & !is.na(trips$end_station_id),]"
   ]
  },
  {
   "cell_type": "markdown",
   "id": "116c4516",
   "metadata": {
    "papermill": {
     "duration": 0.014875,
     "end_time": "2022-08-31T23:58:09.245417",
     "exception": false,
     "start_time": "2022-08-31T23:58:09.230542",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "**Remove rows with empty geolocation data**"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 14,
   "id": "bd0477e6",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2022-08-31T23:58:09.278948Z",
     "iopub.status.busy": "2022-08-31T23:58:09.277276Z",
     "iopub.status.idle": "2022-08-31T23:58:12.813523Z",
     "shell.execute_reply": "2022-08-31T23:58:12.811658Z"
    },
    "papermill": {
     "duration": 3.556188,
     "end_time": "2022-08-31T23:58:12.816228",
     "exception": false,
     "start_time": "2022-08-31T23:58:09.260040",
     "status": "completed"
    },
    "tags": []
   },
   "outputs": [],
   "source": [
    "trips <- trips[!is.na(trips$start_lng) & !is.na(trips$end_lng) & !is.na(trips$start_lat) & !is.na(trips$end_lat),]"
   ]
  },
  {
   "cell_type": "markdown",
   "id": "2d85e6de",
   "metadata": {
    "papermill": {
     "duration": 0.015539,
     "end_time": "2022-08-31T23:58:12.846693",
     "exception": false,
     "start_time": "2022-08-31T23:58:12.831154",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "**Data Summary**"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 15,
   "id": "184dfe05",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2022-08-31T23:58:12.919207Z",
     "iopub.status.busy": "2022-08-31T23:58:12.917685Z",
     "iopub.status.idle": "2022-08-31T23:58:12.940278Z",
     "shell.execute_reply": "2022-08-31T23:58:12.938581Z"
    },
    "papermill": {
     "duration": 0.042422,
     "end_time": "2022-08-31T23:58:12.942826",
     "exception": false,
     "start_time": "2022-08-31T23:58:12.900404",
     "status": "completed"
    },
    "tags": []
   },
   "outputs": [
    {
     "data": {
      "text/html": [
       "<style>\n",
       ".list-inline {list-style: none; margin:0; padding: 0}\n",
       ".list-inline>li {display: inline-block}\n",
       ".list-inline>li:not(:last-child)::after {content: \"\\00b7\"; padding: 0 .5ex}\n",
       "</style>\n",
       "<ol class=list-inline><li>'ride_id'</li><li>'rideable_type'</li><li>'started_at'</li><li>'ended_at'</li><li>'start_station_name'</li><li>'start_station_id'</li><li>'end_station_name'</li><li>'end_station_id'</li><li>'start_lat'</li><li>'start_lng'</li><li>'end_lat'</li><li>'end_lng'</li><li>'member_casual'</li><li>'date'</li><li>'month'</li><li>'day'</li><li>'year'</li><li>'day_of_week'</li><li>'duration'</li></ol>\n"
      ],
      "text/latex": [
       "\\begin{enumerate*}\n",
       "\\item 'ride\\_id'\n",
       "\\item 'rideable\\_type'\n",
       "\\item 'started\\_at'\n",
       "\\item 'ended\\_at'\n",
       "\\item 'start\\_station\\_name'\n",
       "\\item 'start\\_station\\_id'\n",
       "\\item 'end\\_station\\_name'\n",
       "\\item 'end\\_station\\_id'\n",
       "\\item 'start\\_lat'\n",
       "\\item 'start\\_lng'\n",
       "\\item 'end\\_lat'\n",
       "\\item 'end\\_lng'\n",
       "\\item 'member\\_casual'\n",
       "\\item 'date'\n",
       "\\item 'month'\n",
       "\\item 'day'\n",
       "\\item 'year'\n",
       "\\item 'day\\_of\\_week'\n",
       "\\item 'duration'\n",
       "\\end{enumerate*}\n"
      ],
      "text/markdown": [
       "1. 'ride_id'\n",
       "2. 'rideable_type'\n",
       "3. 'started_at'\n",
       "4. 'ended_at'\n",
       "5. 'start_station_name'\n",
       "6. 'start_station_id'\n",
       "7. 'end_station_name'\n",
       "8. 'end_station_id'\n",
       "9. 'start_lat'\n",
       "10. 'start_lng'\n",
       "11. 'end_lat'\n",
       "12. 'end_lng'\n",
       "13. 'member_casual'\n",
       "14. 'date'\n",
       "15. 'month'\n",
       "16. 'day'\n",
       "17. 'year'\n",
       "18. 'day_of_week'\n",
       "19. 'duration'\n",
       "\n",
       "\n"
      ],
      "text/plain": [
       " [1] \"ride_id\"            \"rideable_type\"      \"started_at\"        \n",
       " [4] \"ended_at\"           \"start_station_name\" \"start_station_id\"  \n",
       " [7] \"end_station_name\"   \"end_station_id\"     \"start_lat\"         \n",
       "[10] \"start_lng\"          \"end_lat\"            \"end_lng\"           \n",
       "[13] \"member_casual\"      \"date\"               \"month\"             \n",
       "[16] \"day\"                \"year\"               \"day_of_week\"       \n",
       "[19] \"duration\"          "
      ]
     },
     "metadata": {},
     "output_type": "display_data"
    },
    {
     "data": {
      "text/html": [
       "<style>\n",
       ".list-inline {list-style: none; margin:0; padding: 0}\n",
       ".list-inline>li {display: inline-block}\n",
       ".list-inline>li:not(:last-child)::after {content: \"\\00b7\"; padding: 0 .5ex}\n",
       "</style>\n",
       "<ol class=list-inline><li>4559597</li><li>19</li></ol>\n"
      ],
      "text/latex": [
       "\\begin{enumerate*}\n",
       "\\item 4559597\n",
       "\\item 19\n",
       "\\end{enumerate*}\n"
      ],
      "text/markdown": [
       "1. 4559597\n",
       "2. 19\n",
       "\n",
       "\n"
      ],
      "text/plain": [
       "[1] 4559597      19"
      ]
     },
     "metadata": {},
     "output_type": "display_data"
    }
   ],
   "source": [
    "colnames(trips)\n",
    "\n",
    "dim(trips)"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 16,
   "id": "0d5d07bb",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2022-08-31T23:58:12.976919Z",
     "iopub.status.busy": "2022-08-31T23:58:12.975449Z",
     "iopub.status.idle": "2022-08-31T23:58:13.021268Z",
     "shell.execute_reply": "2022-08-31T23:58:13.019243Z"
    },
    "papermill": {
     "duration": 0.066138,
     "end_time": "2022-08-31T23:58:13.024295",
     "exception": false,
     "start_time": "2022-08-31T23:58:12.958157",
     "status": "completed"
    },
    "tags": []
   },
   "outputs": [
    {
     "name": "stdout",
     "output_type": "stream",
     "text": [
      "tibble [4,559,597 × 19] (S3: tbl_df/tbl/data.frame)\n",
      " $ ride_id           : chr [1:4559597] \"DD06751C6019D865\" \"79973DC3B232048F\" \"F41EB054E44ACFDA\" \"B149E6C71A1C3B14\" ...\n",
      " $ rideable_type     : chr [1:4559597] \"classic_bike\" \"classic_bike\" \"classic_bike\" \"classic_bike\" ...\n",
      " $ started_at        : POSIXct[1:4559597], format: \"2021-08-08 17:21:26\" \"2021-08-27 08:53:52\" ...\n",
      " $ ended_at          : POSIXct[1:4559597], format: \"2021-08-08 17:25:37\" \"2021-08-27 09:18:29\" ...\n",
      " $ start_station_name: chr [1:4559597] \"Desplaines St & Kinzie St\" \"Larrabee St & Armitage Ave\" \"Michigan Ave & Oak St\" \"Michigan Ave & Oak St\" ...\n",
      " $ start_station_id  : chr [1:4559597] \"TA1306000003\" \"TA1309000006\" \"13042\" \"13042\" ...\n",
      " $ end_station_name  : chr [1:4559597] \"Kingsbury St & Kinzie St\" \"Michigan Ave & Oak St\" \"Michigan Ave & Oak St\" \"Michigan Ave & Oak St\" ...\n",
      " $ end_station_id    : chr [1:4559597] \"KA1503000043\" \"13042\" \"13042\" \"13042\" ...\n",
      " $ start_lat         : num [1:4559597] 41.9 41.9 41.9 41.9 41.9 ...\n",
      " $ start_lng         : num [1:4559597] -87.6 -87.6 -87.6 -87.6 -87.7 ...\n",
      " $ end_lat           : num [1:4559597] 41.9 41.9 41.9 41.9 41.9 ...\n",
      " $ end_lng           : num [1:4559597] -87.6 -87.6 -87.6 -87.6 -87.7 ...\n",
      " $ member_casual     : chr [1:4559597] \"member\" \"member\" \"casual\" \"casual\" ...\n",
      " $ date              : Date[1:4559597], format: \"2021-08-08\" \"2021-08-27\" ...\n",
      " $ month             : chr [1:4559597] \"08\" \"08\" \"08\" \"08\" ...\n",
      " $ day               : chr [1:4559597] \"08\" \"27\" \"12\" \"23\" ...\n",
      " $ year              : chr [1:4559597] \"2021\" \"2021\" \"2021\" \"2021\" ...\n",
      " $ day_of_week       : chr [1:4559597] \"Sunday\" \"Friday\" \"Thursday\" \"Monday\" ...\n",
      " $ duration          : num [1:4559597] 251 1477 282 2156 2402 ...\n"
     ]
    }
   ],
   "source": [
    "str(trips)"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 17,
   "id": "8a370089",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2022-08-31T23:58:13.058763Z",
     "iopub.status.busy": "2022-08-31T23:58:13.057317Z",
     "iopub.status.idle": "2022-08-31T23:58:15.612514Z",
     "shell.execute_reply": "2022-08-31T23:58:15.610278Z"
    },
    "papermill": {
     "duration": 2.575755,
     "end_time": "2022-08-31T23:58:15.615584",
     "exception": false,
     "start_time": "2022-08-31T23:58:13.039829",
     "status": "completed"
    },
    "tags": []
   },
   "outputs": [
    {
     "data": {
      "text/plain": [
       "   ride_id          rideable_type        started_at                 \n",
       " Length:4559597     Length:4559597     Min.   :2021-08-01 00:00:04  \n",
       " Class :character   Class :character   1st Qu.:2021-09-23 21:58:57  \n",
       " Mode  :character   Mode  :character   Median :2022-02-10 16:46:15  \n",
       "                                       Mean   :2022-01-30 08:07:39  \n",
       "                                       3rd Qu.:2022-06-05 19:39:42  \n",
       "                                       Max.   :2022-07-31 23:59:29  \n",
       "    ended_at                   start_station_name start_station_id  \n",
       " Min.   :2021-08-01 00:03:30   Length:4559597     Length:4559597    \n",
       " 1st Qu.:2021-09-23 22:14:15   Class :character   Class :character  \n",
       " Median :2022-02-10 16:56:21   Mode  :character   Mode  :character  \n",
       " Mean   :2022-01-30 08:25:56                                        \n",
       " 3rd Qu.:2022-06-05 20:04:04                                        \n",
       " Max.   :2022-08-01 13:26:03                                        \n",
       " end_station_name   end_station_id       start_lat       start_lng     \n",
       " Length:4559597     Length:4559597     Min.   :41.65   Min.   :-87.83  \n",
       " Class :character   Class :character   1st Qu.:41.88   1st Qu.:-87.66  \n",
       " Mode  :character   Mode  :character   Median :41.90   Median :-87.64  \n",
       "                                       Mean   :41.90   Mean   :-87.64  \n",
       "                                       3rd Qu.:41.93   3rd Qu.:-87.63  \n",
       "                                       Max.   :45.64   Max.   :-73.80  \n",
       "    end_lat         end_lng       member_casual           date           \n",
       " Min.   :41.65   Min.   :-87.83   Length:4559597     Min.   :2021-08-01  \n",
       " 1st Qu.:41.88   1st Qu.:-87.66   Class :character   1st Qu.:2021-09-23  \n",
       " Median :41.90   Median :-87.64   Mode  :character   Median :2022-02-10  \n",
       " Mean   :41.90   Mean   :-87.64                      Mean   :2022-01-29  \n",
       " 3rd Qu.:41.93   3rd Qu.:-87.63                      3rd Qu.:2022-06-05  \n",
       " Max.   :42.17   Max.   :-87.53                      Max.   :2022-07-31  \n",
       "    month               day                year           day_of_week       \n",
       " Length:4559597     Length:4559597     Length:4559597     Length:4559597    \n",
       " Class :character   Class :character   Class :character   Class :character  \n",
       " Mode  :character   Mode  :character   Mode  :character   Mode  :character  \n",
       "                                                                            \n",
       "                                                                            \n",
       "                                                                            \n",
       "    duration    \n",
       " Min.   :   60  \n",
       " 1st Qu.:  395  \n",
       " Median :  684  \n",
       " Mean   : 1097  \n",
       " 3rd Qu.: 1224  \n",
       " Max.   :86362  "
      ]
     },
     "metadata": {},
     "output_type": "display_data"
    }
   ],
   "source": [
    "summary(trips)"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 18,
   "id": "2aa7879d",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2022-08-31T23:58:15.650912Z",
     "iopub.status.busy": "2022-08-31T23:58:15.649417Z",
     "iopub.status.idle": "2022-08-31T23:58:15.681959Z",
     "shell.execute_reply": "2022-08-31T23:58:15.679625Z"
    },
    "papermill": {
     "duration": 0.054106,
     "end_time": "2022-08-31T23:58:15.685006",
     "exception": false,
     "start_time": "2022-08-31T23:58:15.630900",
     "status": "completed"
    },
    "tags": []
   },
   "outputs": [
    {
     "data": {
      "text/html": [
       "<table class=\"dataframe\">\n",
       "<caption>A tibble: 6 × 19</caption>\n",
       "<thead>\n",
       "\t<tr><th scope=col>ride_id</th><th scope=col>rideable_type</th><th scope=col>started_at</th><th scope=col>ended_at</th><th scope=col>start_station_name</th><th scope=col>start_station_id</th><th scope=col>end_station_name</th><th scope=col>end_station_id</th><th scope=col>start_lat</th><th scope=col>start_lng</th><th scope=col>end_lat</th><th scope=col>end_lng</th><th scope=col>member_casual</th><th scope=col>date</th><th scope=col>month</th><th scope=col>day</th><th scope=col>year</th><th scope=col>day_of_week</th><th scope=col>duration</th></tr>\n",
       "\t<tr><th scope=col>&lt;chr&gt;</th><th scope=col>&lt;chr&gt;</th><th scope=col>&lt;dttm&gt;</th><th scope=col>&lt;dttm&gt;</th><th scope=col>&lt;chr&gt;</th><th scope=col>&lt;chr&gt;</th><th scope=col>&lt;chr&gt;</th><th scope=col>&lt;chr&gt;</th><th scope=col>&lt;dbl&gt;</th><th scope=col>&lt;dbl&gt;</th><th scope=col>&lt;dbl&gt;</th><th scope=col>&lt;dbl&gt;</th><th scope=col>&lt;chr&gt;</th><th scope=col>&lt;date&gt;</th><th scope=col>&lt;chr&gt;</th><th scope=col>&lt;chr&gt;</th><th scope=col>&lt;chr&gt;</th><th scope=col>&lt;chr&gt;</th><th scope=col>&lt;dbl&gt;</th></tr>\n",
       "</thead>\n",
       "<tbody>\n",
       "\t<tr><td>DD06751C6019D865</td><td>classic_bike </td><td>2021-08-08 17:21:26</td><td>2021-08-08 17:25:37</td><td>Desplaines St &amp; Kinzie St </td><td>TA1306000003</td><td><span style=white-space:pre-wrap>Kingsbury St &amp; Kinzie St  </span></td><td>KA1503000043</td><td>41.88872</td><td>-87.64445</td><td>41.88918</td><td>-87.63851</td><td>member</td><td>2021-08-08</td><td>08</td><td>08</td><td>2021</td><td><span style=white-space:pre-wrap>Sunday  </span></td><td> 251</td></tr>\n",
       "\t<tr><td>79973DC3B232048F</td><td>classic_bike </td><td>2021-08-27 08:53:52</td><td>2021-08-27 09:18:29</td><td>Larrabee St &amp; Armitage Ave</td><td>TA1309000006</td><td><span style=white-space:pre-wrap>Michigan Ave &amp; Oak St     </span></td><td><span style=white-space:pre-wrap>13042       </span></td><td>41.91808</td><td>-87.64375</td><td>41.90096</td><td>-87.62378</td><td>member</td><td>2021-08-27</td><td>08</td><td>27</td><td>2021</td><td><span style=white-space:pre-wrap>Friday  </span></td><td>1477</td></tr>\n",
       "\t<tr><td>F41EB054E44ACFDA</td><td>classic_bike </td><td>2021-08-12 16:52:09</td><td>2021-08-12 16:56:51</td><td><span style=white-space:pre-wrap>Michigan Ave &amp; Oak St     </span></td><td><span style=white-space:pre-wrap>13042       </span></td><td><span style=white-space:pre-wrap>Michigan Ave &amp; Oak St     </span></td><td><span style=white-space:pre-wrap>13042       </span></td><td>41.90096</td><td>-87.62378</td><td>41.90096</td><td>-87.62378</td><td>casual</td><td>2021-08-12</td><td>08</td><td>12</td><td>2021</td><td>Thursday</td><td> 282</td></tr>\n",
       "\t<tr><td>B149E6C71A1C3B14</td><td>classic_bike </td><td>2021-08-23 15:33:04</td><td>2021-08-23 16:09:00</td><td><span style=white-space:pre-wrap>Michigan Ave &amp; Oak St     </span></td><td><span style=white-space:pre-wrap>13042       </span></td><td><span style=white-space:pre-wrap>Michigan Ave &amp; Oak St     </span></td><td><span style=white-space:pre-wrap>13042       </span></td><td>41.90096</td><td>-87.62378</td><td>41.90096</td><td>-87.62378</td><td>casual</td><td>2021-08-23</td><td>08</td><td>23</td><td>2021</td><td><span style=white-space:pre-wrap>Monday  </span></td><td>2156</td></tr>\n",
       "\t<tr><td>C41829CD6CC5A8B6</td><td>classic_bike </td><td>2021-08-23 10:11:09</td><td>2021-08-23 10:51:11</td><td>Aberdeen St &amp; Jackson Blvd</td><td><span style=white-space:pre-wrap>13157       </span></td><td>Aberdeen St &amp; Jackson Blvd</td><td><span style=white-space:pre-wrap>13157       </span></td><td>41.87773</td><td>-87.65479</td><td>41.87773</td><td>-87.65479</td><td>casual</td><td>2021-08-23</td><td>08</td><td>23</td><td>2021</td><td><span style=white-space:pre-wrap>Monday  </span></td><td>2402</td></tr>\n",
       "\t<tr><td>C3C88F6EE5345736</td><td>electric_bike</td><td>2021-08-28 23:09:44</td><td>2021-08-28 23:11:09</td><td>Larrabee St &amp; Armitage Ave</td><td>TA1309000006</td><td>Larrabee St &amp; Armitage Ave</td><td>TA1309000006</td><td>41.91814</td><td>-87.64373</td><td>41.91813</td><td>-87.64374</td><td>casual</td><td>2021-08-28</td><td>08</td><td>28</td><td>2021</td><td>Saturday</td><td><span style=white-space:pre-wrap>  85</span></td></tr>\n",
       "</tbody>\n",
       "</table>\n"
      ],
      "text/latex": [
       "A tibble: 6 × 19\n",
       "\\begin{tabular}{lllllllllllllllllll}\n",
       " ride\\_id & rideable\\_type & started\\_at & ended\\_at & start\\_station\\_name & start\\_station\\_id & end\\_station\\_name & end\\_station\\_id & start\\_lat & start\\_lng & end\\_lat & end\\_lng & member\\_casual & date & month & day & year & day\\_of\\_week & duration\\\\\n",
       " <chr> & <chr> & <dttm> & <dttm> & <chr> & <chr> & <chr> & <chr> & <dbl> & <dbl> & <dbl> & <dbl> & <chr> & <date> & <chr> & <chr> & <chr> & <chr> & <dbl>\\\\\n",
       "\\hline\n",
       "\t DD06751C6019D865 & classic\\_bike  & 2021-08-08 17:21:26 & 2021-08-08 17:25:37 & Desplaines St \\& Kinzie St  & TA1306000003 & Kingsbury St \\& Kinzie St   & KA1503000043 & 41.88872 & -87.64445 & 41.88918 & -87.63851 & member & 2021-08-08 & 08 & 08 & 2021 & Sunday   &  251\\\\\n",
       "\t 79973DC3B232048F & classic\\_bike  & 2021-08-27 08:53:52 & 2021-08-27 09:18:29 & Larrabee St \\& Armitage Ave & TA1309000006 & Michigan Ave \\& Oak St      & 13042        & 41.91808 & -87.64375 & 41.90096 & -87.62378 & member & 2021-08-27 & 08 & 27 & 2021 & Friday   & 1477\\\\\n",
       "\t F41EB054E44ACFDA & classic\\_bike  & 2021-08-12 16:52:09 & 2021-08-12 16:56:51 & Michigan Ave \\& Oak St      & 13042        & Michigan Ave \\& Oak St      & 13042        & 41.90096 & -87.62378 & 41.90096 & -87.62378 & casual & 2021-08-12 & 08 & 12 & 2021 & Thursday &  282\\\\\n",
       "\t B149E6C71A1C3B14 & classic\\_bike  & 2021-08-23 15:33:04 & 2021-08-23 16:09:00 & Michigan Ave \\& Oak St      & 13042        & Michigan Ave \\& Oak St      & 13042        & 41.90096 & -87.62378 & 41.90096 & -87.62378 & casual & 2021-08-23 & 08 & 23 & 2021 & Monday   & 2156\\\\\n",
       "\t C41829CD6CC5A8B6 & classic\\_bike  & 2021-08-23 10:11:09 & 2021-08-23 10:51:11 & Aberdeen St \\& Jackson Blvd & 13157        & Aberdeen St \\& Jackson Blvd & 13157        & 41.87773 & -87.65479 & 41.87773 & -87.65479 & casual & 2021-08-23 & 08 & 23 & 2021 & Monday   & 2402\\\\\n",
       "\t C3C88F6EE5345736 & electric\\_bike & 2021-08-28 23:09:44 & 2021-08-28 23:11:09 & Larrabee St \\& Armitage Ave & TA1309000006 & Larrabee St \\& Armitage Ave & TA1309000006 & 41.91814 & -87.64373 & 41.91813 & -87.64374 & casual & 2021-08-28 & 08 & 28 & 2021 & Saturday &   85\\\\\n",
       "\\end{tabular}\n"
      ],
      "text/markdown": [
       "\n",
       "A tibble: 6 × 19\n",
       "\n",
       "| ride_id &lt;chr&gt; | rideable_type &lt;chr&gt; | started_at &lt;dttm&gt; | ended_at &lt;dttm&gt; | start_station_name &lt;chr&gt; | start_station_id &lt;chr&gt; | end_station_name &lt;chr&gt; | end_station_id &lt;chr&gt; | start_lat &lt;dbl&gt; | start_lng &lt;dbl&gt; | end_lat &lt;dbl&gt; | end_lng &lt;dbl&gt; | member_casual &lt;chr&gt; | date &lt;date&gt; | month &lt;chr&gt; | day &lt;chr&gt; | year &lt;chr&gt; | day_of_week &lt;chr&gt; | duration &lt;dbl&gt; |\n",
       "|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|\n",
       "| DD06751C6019D865 | classic_bike  | 2021-08-08 17:21:26 | 2021-08-08 17:25:37 | Desplaines St &amp; Kinzie St  | TA1306000003 | Kingsbury St &amp; Kinzie St   | KA1503000043 | 41.88872 | -87.64445 | 41.88918 | -87.63851 | member | 2021-08-08 | 08 | 08 | 2021 | Sunday   |  251 |\n",
       "| 79973DC3B232048F | classic_bike  | 2021-08-27 08:53:52 | 2021-08-27 09:18:29 | Larrabee St &amp; Armitage Ave | TA1309000006 | Michigan Ave &amp; Oak St      | 13042        | 41.91808 | -87.64375 | 41.90096 | -87.62378 | member | 2021-08-27 | 08 | 27 | 2021 | Friday   | 1477 |\n",
       "| F41EB054E44ACFDA | classic_bike  | 2021-08-12 16:52:09 | 2021-08-12 16:56:51 | Michigan Ave &amp; Oak St      | 13042        | Michigan Ave &amp; Oak St      | 13042        | 41.90096 | -87.62378 | 41.90096 | -87.62378 | casual | 2021-08-12 | 08 | 12 | 2021 | Thursday |  282 |\n",
       "| B149E6C71A1C3B14 | classic_bike  | 2021-08-23 15:33:04 | 2021-08-23 16:09:00 | Michigan Ave &amp; Oak St      | 13042        | Michigan Ave &amp; Oak St      | 13042        | 41.90096 | -87.62378 | 41.90096 | -87.62378 | casual | 2021-08-23 | 08 | 23 | 2021 | Monday   | 2156 |\n",
       "| C41829CD6CC5A8B6 | classic_bike  | 2021-08-23 10:11:09 | 2021-08-23 10:51:11 | Aberdeen St &amp; Jackson Blvd | 13157        | Aberdeen St &amp; Jackson Blvd | 13157        | 41.87773 | -87.65479 | 41.87773 | -87.65479 | casual | 2021-08-23 | 08 | 23 | 2021 | Monday   | 2402 |\n",
       "| C3C88F6EE5345736 | electric_bike | 2021-08-28 23:09:44 | 2021-08-28 23:11:09 | Larrabee St &amp; Armitage Ave | TA1309000006 | Larrabee St &amp; Armitage Ave | TA1309000006 | 41.91814 | -87.64373 | 41.91813 | -87.64374 | casual | 2021-08-28 | 08 | 28 | 2021 | Saturday |   85 |\n",
       "\n"
      ],
      "text/plain": [
       "  ride_id          rideable_type started_at          ended_at           \n",
       "1 DD06751C6019D865 classic_bike  2021-08-08 17:21:26 2021-08-08 17:25:37\n",
       "2 79973DC3B232048F classic_bike  2021-08-27 08:53:52 2021-08-27 09:18:29\n",
       "3 F41EB054E44ACFDA classic_bike  2021-08-12 16:52:09 2021-08-12 16:56:51\n",
       "4 B149E6C71A1C3B14 classic_bike  2021-08-23 15:33:04 2021-08-23 16:09:00\n",
       "5 C41829CD6CC5A8B6 classic_bike  2021-08-23 10:11:09 2021-08-23 10:51:11\n",
       "6 C3C88F6EE5345736 electric_bike 2021-08-28 23:09:44 2021-08-28 23:11:09\n",
       "  start_station_name         start_station_id end_station_name          \n",
       "1 Desplaines St & Kinzie St  TA1306000003     Kingsbury St & Kinzie St  \n",
       "2 Larrabee St & Armitage Ave TA1309000006     Michigan Ave & Oak St     \n",
       "3 Michigan Ave & Oak St      13042            Michigan Ave & Oak St     \n",
       "4 Michigan Ave & Oak St      13042            Michigan Ave & Oak St     \n",
       "5 Aberdeen St & Jackson Blvd 13157            Aberdeen St & Jackson Blvd\n",
       "6 Larrabee St & Armitage Ave TA1309000006     Larrabee St & Armitage Ave\n",
       "  end_station_id start_lat start_lng end_lat  end_lng   member_casual\n",
       "1 KA1503000043   41.88872  -87.64445 41.88918 -87.63851 member       \n",
       "2 13042          41.91808  -87.64375 41.90096 -87.62378 member       \n",
       "3 13042          41.90096  -87.62378 41.90096 -87.62378 casual       \n",
       "4 13042          41.90096  -87.62378 41.90096 -87.62378 casual       \n",
       "5 13157          41.87773  -87.65479 41.87773 -87.65479 casual       \n",
       "6 TA1309000006   41.91814  -87.64373 41.91813 -87.64374 casual       \n",
       "  date       month day year day_of_week duration\n",
       "1 2021-08-08 08    08  2021 Sunday       251    \n",
       "2 2021-08-27 08    27  2021 Friday      1477    \n",
       "3 2021-08-12 08    12  2021 Thursday     282    \n",
       "4 2021-08-23 08    23  2021 Monday      2156    \n",
       "5 2021-08-23 08    23  2021 Monday      2402    \n",
       "6 2021-08-28 08    28  2021 Saturday      85    "
      ]
     },
     "metadata": {},
     "output_type": "display_data"
    }
   ],
   "source": [
    "head(trips)"
   ]
  },
  {
   "cell_type": "markdown",
   "id": "10d2426a",
   "metadata": {
    "papermill": {
     "duration": 0.016208,
     "end_time": "2022-08-31T23:58:15.717341",
     "exception": false,
     "start_time": "2022-08-31T23:58:15.701133",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "**Comparing members and casual users**"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 19,
   "id": "412e5066",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2022-08-31T23:58:15.753552Z",
     "iopub.status.busy": "2022-08-31T23:58:15.751884Z",
     "iopub.status.idle": "2022-08-31T23:58:30.067703Z",
     "shell.execute_reply": "2022-08-31T23:58:30.065938Z"
    },
    "papermill": {
     "duration": 14.337043,
     "end_time": "2022-08-31T23:58:30.070751",
     "exception": false,
     "start_time": "2022-08-31T23:58:15.733708",
     "status": "completed"
    },
    "tags": []
   },
   "outputs": [
    {
     "data": {
      "text/html": [
       "<table class=\"dataframe\">\n",
       "<caption>A data.frame: 2 × 2</caption>\n",
       "<thead>\n",
       "\t<tr><th scope=col>trips$member_casual</th><th scope=col>trips$duration</th></tr>\n",
       "\t<tr><th scope=col>&lt;chr&gt;</th><th scope=col>&lt;dbl&gt;</th></tr>\n",
       "</thead>\n",
       "<tbody>\n",
       "\t<tr><td>casual</td><td>1546.5234</td></tr>\n",
       "\t<tr><td>member</td><td> 767.8895</td></tr>\n",
       "</tbody>\n",
       "</table>\n"
      ],
      "text/latex": [
       "A data.frame: 2 × 2\n",
       "\\begin{tabular}{ll}\n",
       " trips\\$member\\_casual & trips\\$duration\\\\\n",
       " <chr> & <dbl>\\\\\n",
       "\\hline\n",
       "\t casual & 1546.5234\\\\\n",
       "\t member &  767.8895\\\\\n",
       "\\end{tabular}\n"
      ],
      "text/markdown": [
       "\n",
       "A data.frame: 2 × 2\n",
       "\n",
       "| trips$member_casual &lt;chr&gt; | trips$duration &lt;dbl&gt; |\n",
       "|---|---|\n",
       "| casual | 1546.5234 |\n",
       "| member |  767.8895 |\n",
       "\n"
      ],
      "text/plain": [
       "  trips$member_casual trips$duration\n",
       "1 casual              1546.5234     \n",
       "2 member               767.8895     "
      ]
     },
     "metadata": {},
     "output_type": "display_data"
    },
    {
     "data": {
      "text/html": [
       "<table class=\"dataframe\">\n",
       "<caption>A data.frame: 2 × 2</caption>\n",
       "<thead>\n",
       "\t<tr><th scope=col>trips$member_casual</th><th scope=col>trips$duration</th></tr>\n",
       "\t<tr><th scope=col>&lt;chr&gt;</th><th scope=col>&lt;dbl&gt;</th></tr>\n",
       "</thead>\n",
       "<tbody>\n",
       "\t<tr><td>casual</td><td>919</td></tr>\n",
       "\t<tr><td>member</td><td>560</td></tr>\n",
       "</tbody>\n",
       "</table>\n"
      ],
      "text/latex": [
       "A data.frame: 2 × 2\n",
       "\\begin{tabular}{ll}\n",
       " trips\\$member\\_casual & trips\\$duration\\\\\n",
       " <chr> & <dbl>\\\\\n",
       "\\hline\n",
       "\t casual & 919\\\\\n",
       "\t member & 560\\\\\n",
       "\\end{tabular}\n"
      ],
      "text/markdown": [
       "\n",
       "A data.frame: 2 × 2\n",
       "\n",
       "| trips$member_casual &lt;chr&gt; | trips$duration &lt;dbl&gt; |\n",
       "|---|---|\n",
       "| casual | 919 |\n",
       "| member | 560 |\n",
       "\n"
      ],
      "text/plain": [
       "  trips$member_casual trips$duration\n",
       "1 casual              919           \n",
       "2 member              560           "
      ]
     },
     "metadata": {},
     "output_type": "display_data"
    },
    {
     "data": {
      "text/html": [
       "<table class=\"dataframe\">\n",
       "<caption>A data.frame: 2 × 2</caption>\n",
       "<thead>\n",
       "\t<tr><th scope=col>trips$member_casual</th><th scope=col>trips$duration</th></tr>\n",
       "\t<tr><th scope=col>&lt;chr&gt;</th><th scope=col>&lt;dbl&gt;</th></tr>\n",
       "</thead>\n",
       "<tbody>\n",
       "\t<tr><td>casual</td><td>86362</td></tr>\n",
       "\t<tr><td>member</td><td>86128</td></tr>\n",
       "</tbody>\n",
       "</table>\n"
      ],
      "text/latex": [
       "A data.frame: 2 × 2\n",
       "\\begin{tabular}{ll}\n",
       " trips\\$member\\_casual & trips\\$duration\\\\\n",
       " <chr> & <dbl>\\\\\n",
       "\\hline\n",
       "\t casual & 86362\\\\\n",
       "\t member & 86128\\\\\n",
       "\\end{tabular}\n"
      ],
      "text/markdown": [
       "\n",
       "A data.frame: 2 × 2\n",
       "\n",
       "| trips$member_casual &lt;chr&gt; | trips$duration &lt;dbl&gt; |\n",
       "|---|---|\n",
       "| casual | 86362 |\n",
       "| member | 86128 |\n",
       "\n"
      ],
      "text/plain": [
       "  trips$member_casual trips$duration\n",
       "1 casual              86362         \n",
       "2 member              86128         "
      ]
     },
     "metadata": {},
     "output_type": "display_data"
    },
    {
     "data": {
      "text/html": [
       "<table class=\"dataframe\">\n",
       "<caption>A data.frame: 2 × 2</caption>\n",
       "<thead>\n",
       "\t<tr><th scope=col>trips$member_casual</th><th scope=col>trips$duration</th></tr>\n",
       "\t<tr><th scope=col>&lt;chr&gt;</th><th scope=col>&lt;dbl&gt;</th></tr>\n",
       "</thead>\n",
       "<tbody>\n",
       "\t<tr><td>casual</td><td>60</td></tr>\n",
       "\t<tr><td>member</td><td>60</td></tr>\n",
       "</tbody>\n",
       "</table>\n"
      ],
      "text/latex": [
       "A data.frame: 2 × 2\n",
       "\\begin{tabular}{ll}\n",
       " trips\\$member\\_casual & trips\\$duration\\\\\n",
       " <chr> & <dbl>\\\\\n",
       "\\hline\n",
       "\t casual & 60\\\\\n",
       "\t member & 60\\\\\n",
       "\\end{tabular}\n"
      ],
      "text/markdown": [
       "\n",
       "A data.frame: 2 × 2\n",
       "\n",
       "| trips$member_casual &lt;chr&gt; | trips$duration &lt;dbl&gt; |\n",
       "|---|---|\n",
       "| casual | 60 |\n",
       "| member | 60 |\n",
       "\n"
      ],
      "text/plain": [
       "  trips$member_casual trips$duration\n",
       "1 casual              60            \n",
       "2 member              60            "
      ]
     },
     "metadata": {},
     "output_type": "display_data"
    }
   ],
   "source": [
    "(aggregate(trips$duration ~ trips$member_casual, FUN = mean))\n",
    "(aggregate(trips$duration ~ trips$member_casual, FUN = median))\n",
    "(aggregate(trips$duration ~ trips$member_casual, FUN = max))\n",
    "(aggregate(trips$duration ~ trips$member_casual, FUN = min))"
   ]
  },
  {
   "cell_type": "markdown",
   "id": "bad9c8ba",
   "metadata": {
    "papermill": {
     "duration": 0.017007,
     "end_time": "2022-08-31T23:58:30.104935",
     "exception": false,
     "start_time": "2022-08-31T23:58:30.087928",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "**Now we will put days of week on order, and print out the average for both member and casual users for each day**"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 20,
   "id": "49b5e1d8",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2022-08-31T23:58:30.142713Z",
     "iopub.status.busy": "2022-08-31T23:58:30.141175Z",
     "iopub.status.idle": "2022-08-31T23:58:34.184541Z",
     "shell.execute_reply": "2022-08-31T23:58:34.182286Z"
    },
    "papermill": {
     "duration": 4.064826,
     "end_time": "2022-08-31T23:58:34.187078",
     "exception": false,
     "start_time": "2022-08-31T23:58:30.122252",
     "status": "completed"
    },
    "tags": []
   },
   "outputs": [
    {
     "data": {
      "text/html": [
       "<table class=\"dataframe\">\n",
       "<caption>A matrix: 3 × 14 of type chr</caption>\n",
       "<tbody>\n",
       "\t<tr><th scope=row>trips$member_casual</th><td>casual   </td><td>member   </td><td>casual   </td><td>member   </td><td>casual   </td><td>member   </td><td>casual   </td><td>member   </td><td>casual   </td><td>member   </td><td>casual   </td><td>member   </td><td>casual   </td><td>member   </td></tr>\n",
       "\t<tr><th scope=row>trips$day_of_week</th><td>Monday   </td><td>Monday   </td><td>Tuesday  </td><td>Tuesday  </td><td>Wednesday</td><td>Wednesday</td><td>Thursday </td><td>Thursday </td><td>Friday   </td><td>Friday   </td><td>Saturday </td><td>Saturday </td><td>Sunday   </td><td>Sunday   </td></tr>\n",
       "\t<tr><th scope=row>trips$duration</th><td>1595.7158</td><td> 744.2661</td><td>1362.2113</td><td> 715.6264</td><td>1325.0590</td><td> 724.2294</td><td>1360.6556</td><td> 733.3529</td><td>1430.4839</td><td> 747.2433</td><td>1696.7755</td><td> 868.6813</td><td>1768.2104</td><td> 875.3954</td></tr>\n",
       "</tbody>\n",
       "</table>\n"
      ],
      "text/latex": [
       "A matrix: 3 × 14 of type chr\n",
       "\\begin{tabular}{r|llllllllllllll}\n",
       "\ttrips\\$member\\_casual & casual    & member    & casual    & member    & casual    & member    & casual    & member    & casual    & member    & casual    & member    & casual    & member   \\\\\n",
       "\ttrips\\$day\\_of\\_week & Monday    & Monday    & Tuesday   & Tuesday   & Wednesday & Wednesday & Thursday  & Thursday  & Friday    & Friday    & Saturday  & Saturday  & Sunday    & Sunday   \\\\\n",
       "\ttrips\\$duration & 1595.7158 &  744.2661 & 1362.2113 &  715.6264 & 1325.0590 &  724.2294 & 1360.6556 &  733.3529 & 1430.4839 &  747.2433 & 1696.7755 &  868.6813 & 1768.2104 &  875.3954\\\\\n",
       "\\end{tabular}\n"
      ],
      "text/markdown": [
       "\n",
       "A matrix: 3 × 14 of type chr\n",
       "\n",
       "| trips$member_casual | casual    | member    | casual    | member    | casual    | member    | casual    | member    | casual    | member    | casual    | member    | casual    | member    |\n",
       "| trips$day_of_week | Monday    | Monday    | Tuesday   | Tuesday   | Wednesday | Wednesday | Thursday  | Thursday  | Friday    | Friday    | Saturday  | Saturday  | Sunday    | Sunday    |\n",
       "| trips$duration | 1595.7158 |  744.2661 | 1362.2113 |  715.6264 | 1325.0590 |  724.2294 | 1360.6556 |  733.3529 | 1430.4839 |  747.2433 | 1696.7755 |  868.6813 | 1768.2104 |  875.3954 |\n",
       "\n"
      ],
      "text/plain": [
       "                    [,1]      [,2]      [,3]      [,4]      [,5]      [,6]     \n",
       "trips$member_casual casual    member    casual    member    casual    member   \n",
       "trips$day_of_week   Monday    Monday    Tuesday   Tuesday   Wednesday Wednesday\n",
       "trips$duration      1595.7158  744.2661 1362.2113  715.6264 1325.0590  724.2294\n",
       "                    [,7]      [,8]      [,9]      [,10]     [,11]     [,12]    \n",
       "trips$member_casual casual    member    casual    member    casual    member   \n",
       "trips$day_of_week   Thursday  Thursday  Friday    Friday    Saturday  Saturday \n",
       "trips$duration      1360.6556  733.3529 1430.4839  747.2433 1696.7755  868.6813\n",
       "                    [,13]     [,14]    \n",
       "trips$member_casual casual    member   \n",
       "trips$day_of_week   Sunday    Sunday   \n",
       "trips$duration      1768.2104  875.3954"
      ]
     },
     "metadata": {},
     "output_type": "display_data"
    }
   ],
   "source": [
    "trips$day_of_week <- ordered(trips$day_of_week, levels=c(\"Monday\", \"Tuesday\", \"Wednesday\", \"Thursday\", \"Friday\", \"Saturday\", \"Sunday\"))\n",
    "\n",
    "t(aggregate(trips$duration ~ trips$member_casual + trips$day_of_week, FUN = mean))"
   ]
  },
  {
   "cell_type": "markdown",
   "id": "7cc2610d",
   "metadata": {
    "papermill": {
     "duration": 0.016864,
     "end_time": "2022-08-31T23:58:34.220726",
     "exception": false,
     "start_time": "2022-08-31T23:58:34.203862",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "**Let's visualize the number of rides by day of week for each rider type**"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 21,
   "id": "5a5c2351",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2022-08-31T23:58:34.259356Z",
     "iopub.status.busy": "2022-08-31T23:58:34.257758Z",
     "iopub.status.idle": "2022-08-31T23:58:39.294022Z",
     "shell.execute_reply": "2022-08-31T23:58:39.292340Z"
    },
    "papermill": {
     "duration": 5.058754,
     "end_time": "2022-08-31T23:58:39.296690",
     "exception": false,
     "start_time": "2022-08-31T23:58:34.237936",
     "status": "completed"
    },
    "tags": []
   },
   "outputs": [
    {
     "name": "stderr",
     "output_type": "stream",
     "text": [
      "\u001b[1m\u001b[22m`summarise()` has grouped output by 'member_casual'. You can override using the\n",
      "`.groups` argument.\n"
     ]
    },
    {
     "data": {
      "image/png": "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\nAElFTkSuQmCC"
     },
     "metadata": {
      "image/png": {
       "height": 420,
       "width": 420
      }
     },
     "output_type": "display_data"
    }
   ],
   "source": [
    "trips %>% \n",
    "  mutate(weekday = wday(started_at, label = TRUE)) %>% \n",
    "  group_by(member_casual, weekday) %>% \n",
    "  summarise(number_of_rides = n()\n",
    "            ,average_duration = mean(duration)) %>% \n",
    "  arrange(member_casual, weekday)  %>% \n",
    "  ggplot(aes(x = weekday, y = number_of_rides, fill = member_casual)) +\n",
    "  geom_col(position = \"dodge\")"
   ]
  },
  {
   "cell_type": "markdown",
   "id": "22074c1b",
   "metadata": {
    "papermill": {
     "duration": 0.018235,
     "end_time": "2022-08-31T23:58:39.332964",
     "exception": false,
     "start_time": "2022-08-31T23:58:39.314729",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "**Let's create a visualization for average duration**"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 22,
   "id": "7ccb7bed",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2022-08-31T23:58:39.371701Z",
     "iopub.status.busy": "2022-08-31T23:58:39.370167Z",
     "iopub.status.idle": "2022-08-31T23:58:44.797486Z",
     "shell.execute_reply": "2022-08-31T23:58:44.795627Z"
    },
    "papermill": {
     "duration": 5.449333,
     "end_time": "2022-08-31T23:58:44.800130",
     "exception": false,
     "start_time": "2022-08-31T23:58:39.350797",
     "status": "completed"
    },
    "tags": []
   },
   "outputs": [
    {
     "name": "stderr",
     "output_type": "stream",
     "text": [
      "\u001b[1m\u001b[22m`summarise()` has grouped output by 'member_casual'. You can override using the\n",
      "`.groups` argument.\n"
     ]
    },
    {
     "data": {
      "image/png": "iVBORw0KGgoAAAANSUhEUgAAA0gAAANICAIAAAByhViMAAAABmJLR0QA/wD/AP+gvaeTAAAg\nAElEQVR4nOzdd2DU5f3A8edy2QQIw4GAC1FERFHrVmoVrXtUBasiuBWtWlcVB0VrrQsqzlpH\ntVZQcbYWf7h33XXjnjgQBEJC5t3vjyAFWRcgd+HJ6/VHe/fk8v1+nlyMby+Xu0Q6nQ4AAKz4\n8nI9AAAAy4ewAwCIhLADAIiEsAMAiISwAwCIhLADAIiEsAMAiISwAwCIRH6uB2gu6XR6+vTp\nuZ5iPmVlZclksqamprq6OtezZE9RUVFxcXEqlaqoqMj1LNmTSCTatWsXQqisrKyvr8/1ONnT\npk2b/Pz82tra2bNn53qW7CkoKCgtLQ0hzJgxI9ezZFW7du0SicTs2bNra2tzPUv2lJSUFBYW\n1tfXV1ZW5nqWn+rQoUOuRyD3Yg67hoaGXE8xn7y8vLy8vBY4WLNKp9N5eXkhhFa168b7OoSQ\nSqVa1cZDCHl5eYlEolXtOj8/vxV+k4cQkslkaJE/bJtbK/wmZwXiV7EAAJEQdgAAkRB2AACR\nEHYAAJEQdgAAkRB2AACREHYAAJEQdgAAkRB2AACREHYAAJEQdgAAkRB2AACREHYAAJEQdgAA\nkRB2AACREHYAAJEQdgAAkRB2AACREHYAAJEQdgAAkRB2AACREHYAAJEQdgAAkRB2AACREHYA\nAJEQdgAAkRB2AACREHYAAJEQdgAAkRB2AACREHYAAJEQdgAAkRB2AACRyM/1ADnW9tKRWTtX\nfQj1IYTzL87aGQGAVsUjdgAAkRB2AACREHYAAJEQdgAAkRB2AACREHYAAJGI+eVOOnXqtMTb\n1GZhjvmVlpaWlJRk/bQ5lpeXl8ndEZ927drleoSsSiQSIYSioqLCwsJcz5IDrfObvE2bNm3a\ntMn1FNnT+E1eUFDQ0u7uqVOn5noEWoSYw27mzJlLvE1xFuaYX01NTXV1ddZPmzNFRUXFxcWp\nVKqioiLXs2RPIpFoTLqqqqr6+vpcj5M9bdq0yc/Pr6urq6qqyvUs2VNQUFBaWhoy+5kTk/bt\n24cQqqura2uz/9/IOVNSUlJYWFhfX19ZWZnrWWAhYg67urq6Jd4m+2HX0NCQyWDRyM+f8z3W\nqnadlzfnSQ719fWtauOpVKrxf1vVrufe3a1q13O1tp9pRUVFIYR0Ot2qds0KxHPsAAAiIewA\nACIh7AAAIiHsAAAiIewAACIh7AAAIiHsAAAiIewAACIh7AAAIiHsAAAiIewAACIh7AAAIiHs\nAAAiIewAACIh7AAAIiHsAAAiIewAACIh7AAAIpGf6wEAYJm0vXRkNk9XE0LehZdn84yQOY/Y\nAQBEQtgBAERC2AEARELYAQBEQtgBAERC2AEARELYAQBEQtgBAERC2AEARELYAQBEQtgBAERC\n2AEARELYAQBEQtgBAERC2AEARELYAQBEQtgBAERC2AEARELYAQBEQtgBAERC2AEARELYAQBE\nQtgBAERC2AEARELYAQBEQtgBAERC2AEARELYAQBEQtgBAERC2AEARELYAQBEQtgBAERC2AEA\nRELYAQBEQtgBAERC2AEARELYAQBEQtgBAERC2AEARELYAQBEIj/XA5ADbS8dmc3T1YRQ8MfR\n2TwjALROHrEDAIiEsAMAiISwAwCIhLADAIiEsAMAiISwAwCIhLADAIiEsAMAiISwAwCIhLAD\nAIiEsAMAiISwAwCIhLADAIiEsAMAiISwAwCIhLADAIiEsAMAiISwAwCIhLADAIiEsAMAiISw\nAwCIhLADAIiEsAMAiISwAwCIhLADAIiEsAMAiISwAwCIhLADAIiEsAMAiISwAwCIhLADAIiE\nsAMAiER+ls93y3GHFY+8btBKJY1Xv31++FF/fHPeGxx+8537dCoOIfXE2GsefOrVLyqSvfps\nPuTEoWuXNo66qHUAgNYum1WU/uDpG++dPP2AdHru0vTXp5d02vOkozaYu7JG24IQwsfjzxk1\n7rNDhp1weIf6f11/9fBTam+/fljeotcBAMhS2H33/OgzxzwzdVbtT9ffmVnee+utt95gvtV0\n7RXj3u1x0GUH7NQjhLDOJYkDBl9y+1dDDl2tYOHrXdtkZxcAAC1Zlh7tKt/ggOEjL77sT2f+\nZP31mTUd+pU3zJ75zXfT5z6OVzPjqc+rGwYM6Np4tah8235lha888c2i1rOzBQCAFi5Lj9gV\ntuu6TrvQUFv8k/XXZtWln7nywDHv1aXT+W1W2uXXJx2zZ9/ayjdCCL1LC+bebP3S/AlvzKj9\n+cLXw8Fzrl5xxRVPPvlk4+X27dvffPPNSxysfpm2tTRKSkqKioqyftr5ZH/XeXl5HTp0yPpp\nc69t27bpeZ57EL28vLwQQmFhYau6uxOJROOFVrXruUpLS0tKSnI7Q/Z/puXn57e0u/uHH37I\n9Qi0CLn8y4OG2q9mJQvW7Lz1n24fWZ6u+M9DN116wzlFPW/dt7AyhNAp/3+PJnYuSNbPqk7V\nLHx97tVp06Z99dVXjZerqqqSyeQSZ8j+j4NEIpHJYM0q+7sOIeR81znRGDqtTUv4Js+J1rnr\nlvBN3jp/ksNC5TLskoVd77zzzh+vFW038Iz3J7zy2F/f+tXJJSGEH+pTZT/+YzO1riFZXphX\nuPD1uQfcfvvtV1lllcbLxcXFs2fPXuIM2f+BVF9fX1dXl/XTzif7u06n09XV1Uu+XSwSiURx\ncXEIoaamJpVK5Xqc7CksLEwmkw0NDbW1P31CbcSSyWRhYWEIIZOfOTFpfKCurq6uvj4n/7X4\nP9n/mZZKpWpqarJ+WliylvVaIf1WKXlk2pSCNhuG8NSk2fXdi+YE3Aez69tvW76o9bmfvvPO\nO++8886Nl1Op1LRp05Z4xrbLewtLVFtbW1VVlfXTzif7u06n05WVlVk/bc7k5eU1hl11dXXO\nOz6bkslkMpmsr69vVXd3UVFRY9i1ql2HH8OupqYm5//Zlv2faQ0NDa3t7mZFkcuH0Ke/f/UR\nRw77pnbu4xmpJydXlfdet7h8h9UKkw8/813jal3l6y9W1G6y06qLWs/F7AAALU4uw67d2gM7\nVX175ojrX3pr0gdvvz529BlPVbY9+sh1Q6LwtP17fXjLiEdemfT1x2/ddN7lpV12HNytbJHr\nAADk9lexefmdL7j69zdfd/uVF55TnWy7ds8+Z4wa0a+sIISwzsALj68ZPXbUeVOrEz026n/h\nyKMaC3RR6wAAZDXskoXdHnjggXlXijpscOxZFx274E0TyQGHnTrgsIzXAQBaPQ94AQBEQtgB\nAERC2AEARELYAQBEQtgBAERC2AEARELYAQBEQtgBAERC2AEARELYAQBEQtgBAERC2AEARELY\nAQBEQtgBAERC2AEARELYAQBEQtgBAERC2AEARELYAQBEQtgBAERC2AEARCI/1wMAsNy0vXRk\n1s5V0/h/516UtTMCS+QROwCASAg7AIBICDsAgEgIOwCASAg7AIBICDsAgEgIOwCASAg7AIBI\nCDsAgEgIOwCASAg7AIBICDsAgEgIOwCASAg7AIBICDsAgEgIOwCASAg7AIBICDsAgEgIOwCA\nSAg7AIBICDsAgEgIOwCASAg7AIBICDsAgEgIOwCASAg7AIBI5Od6AMietpeOzNq5ahr/7+wL\nsnZG5pXN+zqEUBNC0Z+uzOYZARbKI3YAAJEQdgAAkRB2AACREHYAAJEQdgAAkRB2AACREHYA\nAJEQdgAAkRB2AACREHYAAJEQdgAAkRB2AACREHYAAJEQdgAAkcjP9QBA82p76cisnSsdQk0I\nYeSlWTsjAPPyiB0AQCSEHQBAJIQdAEAkhB0AQCSEHQBAJIQdAEAkhB0AQCSEHQBAJIQdAEAk\nhB0AQCSEHQBAJIQdAEAkhB0AQCSEHQBAJIQdAEAkhB0AQCSEHQBAJIQdAEAkhB0AQCSEHQBA\nJIQdAEAkhB0AQCSEHQBAJIQdAEAkhB0AQCSEHQBAJIQdAEAkhB0AQCTycz1AM2rTpk2uR1iI\nwsLCRCKR6ymyLZFItMy7o7kVFxcXFhbmeopsy8/Pb513d+vcdVFRUTKZzPUU2ZZMJlva3V1Z\nWZnrEWgRYg67FttPLXawZtVqd91qN57rEXKgde46tNaNt85d0/LFHHazZs1a4m3aZmGO+dXW\n1lZVVWX9tPPJ/q7T6XQmd0dzy/7GZ8+eXVdXl/XTzif7u66vr8/53Z39XYfMfuY0t+xvvKam\nprq6OuunnU/2d93Q0NAS7m5YkOfYAQBEQtgBAERC2AEARELYAQBEQtgBAERC2AEARELYAQBE\nQtgBAERC2AEARELYAQBEQtgBAERC2AEARELYAQBEQtgBAERC2AEARELYAQBEQtgBAERC2AEA\nRELYAQBEQtgBAERC2AEARELYAQBEQtgBAERC2AEARELYAQBEQtgBAERC2AEARELYAQBEQtgB\nAERC2AEARELYAQBEQtgBAERC2AEARELYAQBEQtgBAERC2AEARELYAQBEQtgBAERC2AEARELY\nAQBEQtgBAERC2AEARELYAQBEQtgBAERC2AEARELYAQBEQtgBAERC2AEARELYAQBEQtgBAERC\n2AEARELYAQBEQtgBAERC2AEARELYAQBEQtgBAERC2AEARELYAQBEQtgBAERC2AEARELYAQBE\nQtgBAERC2AEARELYAQBEQtgBAERC2AEARELYAQBEQtgBAERC2AEARELYAQBEQtgBAERC2AEA\nRELYAQBEQtgBAEQiv0m3nvblx1Mq6xZcX2+99ZbTPAAALKVMw676+0d+te3AhyZNW+hH0+n0\n8hsJAIClkWnY/WXvQ//9QcUex/3ul33XzE8060gAACyNTMPuwpemrD3wngev2atZpwEAYKll\n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\nC5bwACcAsELKy+8079X8RChaqcPcq4m8grmXq6f9uyGdfvPyzROX//QgM96c0dSjNeqw4Xzv\nWZpfvM7uHYsf+vbp6mlTlniuwrKNVy7I6NGrmR88HkLY5herzLu43RHHbRdCCKG0vOO0lyb8\nbcJTb7//0Weff/ruG//9anpNcXkIISSLuj/8x0P3OPvvm69xxxp9tth6yy23/8UuB+y/c8f8\nJYfRYg67jDIKu3RDRXlphy3+8cETA3vMXWzXfd2NlsMAAMCKL68whLDhGTfNfUxurqL2GT1y\ntqAF+yg/ERJ5RZmcK5GX6WuxpWpSIYTCxMJrbPypOx4w6vGu/X6x5w5b7rHNL08dudFXRw84\n4bs5H93+jL99N+Ss++775xNPPfPsxFv+ccOo356y5X1vPT5gnocS50qn0hkedllkFHaJZPtT\n1+94600vhXnCDgCgUXHH3ZKJk+unr7fLLlvPXayf/d74B/676kalS3fMaW/dF8KAuVcbaj59\ncGp1u612LO7Ydzmeq926m4Qw8dkXvw9rtJu7+NiZx902tcP1o/YaOOrx7rtd99k/j577oZt/\nvFA3a9Krb0/vtNGmg44+bdDRp4UQ3v33Bb13O++kc15759qtGkee90Tfvjyt8UJtxQuLOewy\nyvQ5duc+/VDfL04cduX9U2ta1cvBAABLll+8zojeHT+47bBHv/nfE8XuGLb3QQcd9HmmrfFT\nsyZfc/a/Pv7xWsM/Ttt7VkNq70u2Wb7narfGWRuVFf7nN6d9Uj2ncGpnPD/4zzf888WV66ve\na0inO2686dwbV3393OVfVYSQDiFUfnvtlltueeDFr8396Jqb/SyEUF9ZH0IoTeZVT/vX9z8+\nZbB66gvHPzbnpeIWf9hllOlfxe5x4PDUKqtfe/K+155SvEqXlYrn/731J598suyjAAArrpMf\nuuaGdQ/etUeffQfttWnPjm89Nu62ie9vOOS2Q1deykfsilYqvniv3m8dfPjPerR97fE7733y\n0+67XHD1Vqss33Mlku3v//vxPff984br9B96yC6rFky/94brvm5oc/XdQ0pXKt6p0/GPX7rH\nCQWnbdqt9OO3X/jrdQ/0WLW49otXr7z9rsMPHLHTSn959ILtd/t46JYbrJ2a/ul9f70pWdBp\nxEX9Qgh7Hbru7y98aaNfDD7jkF/UffPeLVf8+dvOheHL+hBC6UqDFnPYIw7af0kjL06mYVdc\n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\n+tjRZzxV2fboI9cNicLT9u/14S0jHnll0tcfv3XTeZeXdtlxcLeyRa4DAJDbX8Xm5Xe+4Orf\n33zd7VdeeE51su3aPfucMWpEv7KCEMI6Ay88vmb02FHnTa1O9Nio/4Ujj2os0EWtAwCQ4+fY\nFXXY4NizLjp2wQ8kkgMOO3XAYRmvAwC0eh7wAgCIhLADAIiEsAMAiISwAwCIhLADAIiEsAMA\niISwAwCIhLADAIiEsAMAiISwAwCIhLADAIiEsAMAiISwAwCIhLADAIiEsAMAiISwAwCIhLAD\nAIiEsAMAiISwAwCIhLADAIiEsAMAiISwAwCIhLADAIiEsAMAiISwAwCIhLADAIiEsAMAiISw\nAwCIhLADAIiEsAMAiISwAwCIhLADAIiEsAMAiISwAwCIhLADAIiEsAMAiISwAwCIhLADAIiE\nsAMAiISwAwCIhLADAIiEsAMAiISwAwCIhLADAIiEsAMAiISwAwCIhLADAIiEsAMAiISwAwCI\nhLADAIiEsAMAiISwAwCIhLADAIiEsAMAiISwAwCIhLADAIiEsAMAiISwAwCIhLADAIiEsAMA\niISwAwCIhLADAIiEsAMAiISwAwCIhLADAIiEsAMAiISwAwCIhLADAIiEsAMAiISwAwCIhLAD\nAIiEsAMAiISwAwCIhLADAIiEsAMAiISwAwCIhLADAIiEsAMAiISwAwCIhLADAIiEsAMAiISw\nAwCIhLADAIiEsAMAiISwAwCIhLADAIiEsAMAiISwAwCIhLADAIiEsAMAiISwAwCIhLADAIhE\nfq4HaEbl5eVLvE1DFubIqYV+EVrnrkNr3bhdR8k3+bxa565/Yvr06VmYhJYv5rCrrq5e4m0K\nsjBHTi30i9A6dx1a68btOkq+yefVOncNCyXsIueH4Lxa58btOkq+yefVOncNC+U5dgAAkRB2\nAACREHYAAJEQdgAAkRB2AACREHYAAJEQdgAAkRB2AACREHYAAJEQdgAAkRB2AACREHYAAJEQ\ndgAAkRB2AACREHYAAJEQdgAAkRB2AACREHYAAJEQdgAAkRB2AACREHYAAJEQdgAAkRB2AACR\nEHYAAJEQdgAAkRB2AACREHYAAJEQdgAAkRB2AACREHYAAJEQdgAAkRB2AACREHYAAJEQdgAA\nkRB2AACREHYAAJEQdgAAkRB2AACREHYAAJEQdgAAkRB2AACREHYAAJEQdgAAkRB2AACREHYA\n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\nfKOmWJcAAAAASUVORK5CYII="
     },
     "metadata": {
      "image/png": {
       "height": 420,
       "width": 420
      }
     },
     "output_type": "display_data"
    }
   ],
   "source": [
    "trips %>% \n",
    "  mutate(weekday = wday(started_at, label = TRUE)) %>% \n",
    "  group_by(member_casual, weekday) %>% \n",
    "  summarise(number_of_rides = n()\n",
    "            ,average_duration = mean(duration)) %>% \n",
    "  arrange(member_casual, weekday)  %>% \n",
    "  ggplot(aes(x = weekday, y = average_duration, fill = member_casual)) +\n",
    "  geom_col(position = \"dodge\")"
   ]
  },
  {
   "cell_type": "markdown",
   "id": "b272c396",
   "metadata": {
    "papermill": {
     "duration": 0.018204,
     "end_time": "2022-08-31T23:58:44.837222",
     "exception": false,
     "start_time": "2022-08-31T23:58:44.819018",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "### Conclution"
   ]
  },
  {
   "cell_type": "markdown",
   "id": "c4d1fe7b",
   "metadata": {
    "papermill": {
     "duration": 0.01798,
     "end_time": "2022-08-31T23:58:44.873109",
     "exception": false,
     "start_time": "2022-08-31T23:58:44.855129",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "**Insights**"
   ]
  },
  {
   "cell_type": "markdown",
   "id": "90c0b833",
   "metadata": {
    "papermill": {
     "duration": 0.017926,
     "end_time": "2022-08-31T23:58:44.908545",
     "exception": false,
     "start_time": "2022-08-31T23:58:44.890619",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "- Member subscripers are more than casual users\n",
    "- Based on the results, casual riders use the service much more on weekends\n",
    "- Casual riders also drive far longer than member subscripers\n",
    "- There is a surge in service usage during the months of summer especially among casual users\n",
    "- Classic bikes are the most popular bikes\n",
    "- members do not use docked bikes"
   ]
  },
  {
   "cell_type": "markdown",
   "id": "5c7c7d40",
   "metadata": {
    "papermill": {
     "duration": 0.017916,
     "end_time": "2022-08-31T23:58:44.944799",
     "exception": false,
     "start_time": "2022-08-31T23:58:44.926883",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "**Recommendations:**\n",
    "\n"
   ]
  },
  {
   "cell_type": "markdown",
   "id": "dae94c5a",
   "metadata": {
    "papermill": {
     "duration": 0.017774,
     "end_time": "2022-08-31T23:58:44.980577",
     "exception": false,
     "start_time": "2022-08-31T23:58:44.962803",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "- Marketing campaigns need to target casual users by providing discounts when subscribing on weekends\n",
    "- Subscription should allow for longer duration and distance on weekends\n",
    "- Marketing campaigns should focus on attracting more members in the summer season"
   ]
  },
  {
   "cell_type": "markdown",
   "id": "329b66b5",
   "metadata": {
    "papermill": {
     "duration": 0.017884,
     "end_time": "2022-08-31T23:58:45.016137",
     "exception": false,
     "start_time": "2022-08-31T23:58:44.998253",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "**Create a CSV file with the data needed for further visualization in Excel, Tableau, Power BI, or any other visualization software**"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 23,
   "id": "ff3f0ccc",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2022-08-31T23:58:45.055759Z",
     "iopub.status.busy": "2022-08-31T23:58:45.053984Z",
     "iopub.status.idle": "2022-08-31T23:58:45.069076Z",
     "shell.execute_reply": "2022-08-31T23:58:45.067164Z"
    },
    "papermill": {
     "duration": 0.037965,
     "end_time": "2022-08-31T23:58:45.072217",
     "exception": false,
     "start_time": "2022-08-31T23:58:45.034252",
     "status": "completed"
    },
    "tags": []
   },
   "outputs": [],
   "source": [
    "cleaned_data <- trips [, c(\"ride_id\", \"rideable_type\", \"member_casual\", \"month\", \"day_of_week\", \"duration\")]"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 24,
   "id": "941d8f23",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2022-08-31T23:58:45.111494Z",
     "iopub.status.busy": "2022-08-31T23:58:45.109756Z",
     "iopub.status.idle": "2022-08-31T23:58:45.508707Z",
     "shell.execute_reply": "2022-08-31T23:58:45.506452Z"
    },
    "papermill": {
     "duration": 0.422056,
     "end_time": "2022-08-31T23:58:45.511955",
     "exception": false,
     "start_time": "2022-08-31T23:58:45.089899",
     "status": "completed"
    },
    "tags": []
   },
   "outputs": [
    {
     "data": {
      "text/plain": [
       "   ride_id          rideable_type      member_casual         month          \n",
       " Length:4559597     Length:4559597     Length:4559597     Length:4559597    \n",
       " Class :character   Class :character   Class :character   Class :character  \n",
       " Mode  :character   Mode  :character   Mode  :character   Mode  :character  \n",
       "                                                                            \n",
       "                                                                            \n",
       "                                                                            \n",
       "                                                                            \n",
       "    day_of_week        duration    \n",
       " Monday   :597734   Min.   :   60  \n",
       " Tuesday  :615234   1st Qu.:  395  \n",
       " Wednesday:620070   Median :  684  \n",
       " Thursday :642430   Mean   : 1097  \n",
       " Friday   :619439   3rd Qu.: 1224  \n",
       " Saturday :766428   Max.   :86362  \n",
       " Sunday   :698262                  "
      ]
     },
     "metadata": {},
     "output_type": "display_data"
    }
   ],
   "source": [
    "summary(cleaned_data)"
   ]
  },
  {
   "cell_type": "markdown",
   "id": "6c54fd1d",
   "metadata": {
    "papermill": {
     "duration": 0.01838,
     "end_time": "2022-08-31T23:58:45.548113",
     "exception": false,
     "start_time": "2022-08-31T23:58:45.529733",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "**Sving the resulted CSV file to the output folder in Kaggle**"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 25,
   "id": "5f9dcfbc",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2022-08-31T23:58:45.587757Z",
     "iopub.status.busy": "2022-08-31T23:58:45.586133Z",
     "iopub.status.idle": "2022-08-31T23:59:07.114204Z",
     "shell.execute_reply": "2022-08-31T23:59:07.112466Z"
    },
    "papermill": {
     "duration": 21.550599,
     "end_time": "2022-08-31T23:59:07.116589",
     "exception": false,
     "start_time": "2022-08-31T23:58:45.565990",
     "status": "completed"
    },
    "tags": []
   },
   "outputs": [],
   "source": [
    "write.csv(cleaned_data, file = './compact_data.csv')"
   ]
  },
  {
   "cell_type": "markdown",
   "id": "f1591773",
   "metadata": {
    "papermill": {
     "duration": 0.018135,
     "end_time": "2022-08-31T23:59:07.153349",
     "exception": false,
     "start_time": "2022-08-31T23:59:07.135214",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "**Creating and saving summary data files for further investigation by Excel, Tableau, ...***"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 26,
   "id": "cf86020a",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2022-08-31T23:59:07.193746Z",
     "iopub.status.busy": "2022-08-31T23:59:07.192239Z",
     "iopub.status.idle": "2022-08-31T23:59:25.426441Z",
     "shell.execute_reply": "2022-08-31T23:59:25.424695Z"
    },
    "papermill": {
     "duration": 18.257418,
     "end_time": "2022-08-31T23:59:25.429476",
     "exception": false,
     "start_time": "2022-08-31T23:59:07.172058",
     "status": "completed"
    },
    "tags": []
   },
   "outputs": [],
   "source": [
    "duration_by_weekday <- aggregate(trips$duration ~ trips$member_casual + trips$day_of_week, FUN = mean)\n",
    "rides_by_weekday <- aggregate(trips$ride_id ~ trips$member_casual + trips$day_of_week, FUN = length)\n",
    "rides_by_month <- aggregate(trips$ride_id ~ trips$member_casual + trips$month, FUN = length)\n",
    "rides_by_bike_type <- aggregate(trips$ride_id ~ trips$member_casual + trips$rideable_type, FUN = length)"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 27,
   "id": "81035b55",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2022-08-31T23:59:25.470924Z",
     "iopub.status.busy": "2022-08-31T23:59:25.469443Z",
     "iopub.status.idle": "2022-08-31T23:59:25.489652Z",
     "shell.execute_reply": "2022-08-31T23:59:25.487947Z"
    },
    "papermill": {
     "duration": 0.042812,
     "end_time": "2022-08-31T23:59:25.492121",
     "exception": false,
     "start_time": "2022-08-31T23:59:25.449309",
     "status": "completed"
    },
    "tags": []
   },
   "outputs": [],
   "source": [
    "write.csv(duration_by_weekday, file = './duration_by_weekday.csv')\n",
    "write.csv(rides_by_weekday, file = './rides_by_weekday.csv')\n",
    "write.csv(rides_by_month, file = './rides_by_month.csv')\n",
    "write.csv(rides_by_bike_type, file = './rides_by_bike_type.csv')"
   ]
  },
  {
   "cell_type": "markdown",
   "id": "7842fb5d",
   "metadata": {
    "papermill": {
     "duration": 0.018627,
     "end_time": "2022-08-31T23:59:25.528686",
     "exception": false,
     "start_time": "2022-08-31T23:59:25.510059",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "**Additions:**\n",
    "- You can download the cleaned dataset from <a href='./compact_data.csv'>here</a>\n",
    "- I used Tableau to visualized the 4 summary CSV data files. You can find the dashboard and visualizations [here](https://public.tableau.com/views/GoogleDataAnalyticsCapstoneProject-DivvyCyclystic/Membervs_CasualBikesUsers?:language=en-US&:display_count=n&:origin=viz_share_link)"
   ]
  },
  {
   "cell_type": "markdown",
   "id": "1ea65a90",
   "metadata": {
    "papermill": {
     "duration": 0.018329,
     "end_time": "2022-08-31T23:59:25.565041",
     "exception": false,
     "start_time": "2022-08-31T23:59:25.546712",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "**Note:** *Some chuncks of this code were inspired from the [basic script](https://docs.google.com/document/d/1TTj5KNKf4BWvEORGm10oNbpwTRk1hamsWJGj6qRWpuI/edit) provided with the capstone project guidlines.*"
   ]
  }
 ],
 "metadata": {
  "kernelspec": {
   "display_name": "R",
   "language": "R",
   "name": "ir"
  },
  "language_info": {
   "codemirror_mode": "r",
   "file_extension": ".r",
   "mimetype": "text/x-r-source",
   "name": "R",
   "pygments_lexer": "r",
   "version": "4.0.5"
  },
  "papermill": {
   "default_parameters": {},
   "duration": 152.508518,
   "end_time": "2022-08-31T23:59:25.904822",
   "environment_variables": {},
   "exception": null,
   "input_path": "__notebook__.ipynb",
   "output_path": "__notebook__.ipynb",
   "parameters": {},
   "start_time": "2022-08-31T23:56:53.396304",
   "version": "2.3.4"
  }
 },
 "nbformat": 4,
 "nbformat_minor": 5
}
