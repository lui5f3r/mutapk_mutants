.class public Lorg/wikipedia/feed/announcement/GeoIPCookie;
.super Ljava/lang/Object;
.source "GeoIPCookie.java"


# instance fields
.field private final city:Ljava/lang/String;

.field private final country:Ljava/lang/String;

.field private final location:Landroid/location/Location;

.field private final region:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/location/Location;)V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-object p1, p0, Lorg/wikipedia/feed/announcement/GeoIPCookie;->country:Ljava/lang/String;

    .line 17
    iput-object p2, p0, Lorg/wikipedia/feed/announcement/GeoIPCookie;->region:Ljava/lang/String;

    .line 18
    iput-object p3, p0, Lorg/wikipedia/feed/announcement/GeoIPCookie;->city:Ljava/lang/String;

    .line 19
    iput-object p4, p0, Lorg/wikipedia/feed/announcement/GeoIPCookie;->location:Landroid/location/Location;

    return-void
.end method


# virtual methods
.method public city()Ljava/lang/String;
    .locals 1

    .line 34
    iget-object v0, p0, Lorg/wikipedia/feed/announcement/GeoIPCookie;->city:Ljava/lang/String;

    return-object v0
.end method

.method public country()Ljava/lang/String;
    .locals 1

    .line 24
    iget-object v0, p0, Lorg/wikipedia/feed/announcement/GeoIPCookie;->country:Ljava/lang/String;

    return-object v0
.end method

.method public location()Landroid/location/Location;
    .locals 1

    .line 39
    iget-object v0, p0, Lorg/wikipedia/feed/announcement/GeoIPCookie;->location:Landroid/location/Location;

    return-object v0
.end method

.method public region()Ljava/lang/String;
    .locals 1

    .line 29
    iget-object v0, p0, Lorg/wikipedia/feed/announcement/GeoIPCookie;->region:Ljava/lang/String;

    return-object v0
.end method
