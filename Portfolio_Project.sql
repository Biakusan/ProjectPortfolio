select *
from PortfolioProject1 ..CovidDeaths
order by 3,4

--select *
--from PortfolioProject1 ..CovidVaccinations
--order by 3,4 

-- Select Data that we are going to be using

Select Location, date, total_cases, new_cases, total_deaths, population
FROM PortfolioProject1..CovidDeaths
order by 1,2


-- Looking at Total Cases VS Total Deaths

Select Location, date, total_cases,  total_deaths, (total_deaths/total_cases)*100 as DeathPercentage
FROM PortfolioProject1..CovidDeaths
Where location like '%Kingdom%'
order by 1,2



--Looking at Total Cases vs Population
-- Shows what percentage of population got covid
Select Location, date, population, total_cases,  (total_cases/population)*100 as DeathPercentage
FROM PortfolioProject1..CovidDeaths
Where location like '%Kingdom%'
order by 1,2


-- Looking at Countries with the Highest Infection Rate compared to Population