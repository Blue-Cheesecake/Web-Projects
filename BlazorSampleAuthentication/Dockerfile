# https://hub.docker.com/_/microsoft-dotnet
FROM mcr.microsoft.com/dotnet/sdk:6.0 AS build
WORKDIR /source

# copy csproj and restore as distinct layers
COPY . .
RUN dotnet restore "BlazorSampleAuthentication.csproj" --disable-parallel
RUN dotnet publish "BlazorSampleAuthentication.csproj" -c release -o /app --no-restore


# Serving Stage

FROM mcr.microsoft.com/dotnet/aspnet:6.0
WORKDIR /app
COPY --from=build /app ./

EXPOSE 5000

ENTRYPOINT ["dotnet", "BlazorSampleAuthentication.dll"]