.class public Lorg/wikipedia/dataclient/wikidata/Claims$GlobeCoordinateValue;
.super Ljava/lang/Object;
.source "Claims.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/wikipedia/dataclient/wikidata/Claims;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "GlobeCoordinateValue"
.end annotation


# instance fields
.field private altitude:D

.field private latitude:D

.field private longitude:D

.field private precision:D


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 101
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getLocation()Landroid/location/Location;
    .locals 3

    .line 108
    new-instance v0, Landroid/location/Location;

    const-string v1, ""

    invoke-direct {v0, v1}, Landroid/location/Location;-><init>(Ljava/lang/String;)V

    .line 109
    iget-wide v1, p0, Lorg/wikipedia/dataclient/wikidata/Claims$GlobeCoordinateValue;->latitude:D

    invoke-virtual {v0, v1, v2}, Landroid/location/Location;->setLatitude(D)V

    .line 110
    iget-wide v1, p0, Lorg/wikipedia/dataclient/wikidata/Claims$GlobeCoordinateValue;->longitude:D

    invoke-virtual {v0, v1, v2}, Landroid/location/Location;->setLongitude(D)V

    .line 111
    iget-wide v1, p0, Lorg/wikipedia/dataclient/wikidata/Claims$GlobeCoordinateValue;->altitude:D

    invoke-virtual {v0, v1, v2}, Landroid/location/Location;->setAltitude(D)V

    return-object v0
.end method
