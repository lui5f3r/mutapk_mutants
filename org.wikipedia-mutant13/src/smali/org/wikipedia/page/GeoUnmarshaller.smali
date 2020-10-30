.class public final Lorg/wikipedia/page/GeoUnmarshaller;
.super Ljava/lang/Object;
.source "GeoUnmarshaller.java"


# static fields
.field static final LATITUDE:Ljava/lang/String; = "lat"

.field static final LONGITUDE:Ljava/lang/String; = "lon"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static unmarshal(Ljava/lang/String;)Landroid/location/Location;
    .locals 2

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    .line 23
    :cond_0
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 27
    invoke-static {v1}, Lorg/wikipedia/page/GeoUnmarshaller;->unmarshal(Lorg/json/JSONObject;)Landroid/location/Location;

    move-result-object p0

    return-object p0

    :catch_0
    return-object v0
.end method

.method public static unmarshal(Lorg/json/JSONObject;)Landroid/location/Location;
    .locals 3

    .line 32
    new-instance v0, Landroid/location/Location;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/location/Location;-><init>(Ljava/lang/String;)V

    const-string v1, "lat"

    .line 33
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;)D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroid/location/Location;->setLatitude(D)V

    const-string v1, "lon"

    .line 34
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;)D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroid/location/Location;->setLongitude(D)V

    return-object v0
.end method
