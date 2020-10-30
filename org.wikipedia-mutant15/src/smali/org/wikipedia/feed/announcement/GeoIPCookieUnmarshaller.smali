.class public final Lorg/wikipedia/feed/announcement/GeoIPCookieUnmarshaller;
.super Ljava/lang/Object;
.source "GeoIPCookieUnmarshaller.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/wikipedia/feed/announcement/GeoIPCookieUnmarshaller$Component;
    }
.end annotation


# static fields
.field private static final COOKIE_NAME:Ljava/lang/String; = "GeoIP"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static unmarshal()Lorg/wikipedia/feed/announcement/GeoIPCookie;
    .locals 2

    .line 26
    invoke-static {}, Lorg/wikipedia/dataclient/SharedPreferenceCookieManager;->getInstance()Lorg/wikipedia/dataclient/SharedPreferenceCookieManager;

    move-result-object v0

    const-string v1, "GeoIP"

    invoke-virtual {v0, v1}, Lorg/wikipedia/dataclient/SharedPreferenceCookieManager;->getCookieByName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/wikipedia/feed/announcement/GeoIPCookieUnmarshaller;->unmarshal(Ljava/lang/String;)Lorg/wikipedia/feed/announcement/GeoIPCookie;

    move-result-object v0

    return-object v0
.end method

.method static unmarshal(Ljava/lang/String;)Lorg/wikipedia/feed/announcement/GeoIPCookie;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 32
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, ":"

    .line 35
    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    .line 36
    array-length v0, p0

    invoke-static {}, Lorg/wikipedia/feed/announcement/GeoIPCookieUnmarshaller$Component;->values()[Lorg/wikipedia/feed/announcement/GeoIPCookieUnmarshaller$Component;

    move-result-object v1

    array-length v1, v1

    if-lt v0, v1, :cond_2

    .line 38
    sget-object v0, Lorg/wikipedia/feed/announcement/GeoIPCookieUnmarshaller$Component;->VERSION:Lorg/wikipedia/feed/announcement/GeoIPCookieUnmarshaller$Component;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget-object v0, p0, v0

    const-string v1, "v4"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    .line 42
    sget-object v1, Lorg/wikipedia/feed/announcement/GeoIPCookieUnmarshaller$Component;->LATITUDE:Lorg/wikipedia/feed/announcement/GeoIPCookieUnmarshaller$Component;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget-object v1, p0, v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Lorg/wikipedia/feed/announcement/GeoIPCookieUnmarshaller$Component;->LONGITUDE:Lorg/wikipedia/feed/announcement/GeoIPCookieUnmarshaller$Component;

    .line 43
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget-object v1, p0, v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 44
    new-instance v0, Landroid/location/Location;

    const-string v1, ""

    invoke-direct {v0, v1}, Landroid/location/Location;-><init>(Ljava/lang/String;)V

    .line 46
    :try_start_0
    sget-object v1, Lorg/wikipedia/feed/announcement/GeoIPCookieUnmarshaller$Component;->LATITUDE:Lorg/wikipedia/feed/announcement/GeoIPCookieUnmarshaller$Component;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget-object v1, p0, v1

    invoke-static {v1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroid/location/Location;->setLatitude(D)V

    .line 47
    sget-object v1, Lorg/wikipedia/feed/announcement/GeoIPCookieUnmarshaller$Component;->LONGITUDE:Lorg/wikipedia/feed/announcement/GeoIPCookieUnmarshaller$Component;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget-object v1, p0, v1

    invoke-static {v1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroid/location/Location;->setLongitude(D)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 49
    :catch_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Location is malformed."

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 52
    :cond_0
    :goto_0
    new-instance v1, Lorg/wikipedia/feed/announcement/GeoIPCookie;

    sget-object v2, Lorg/wikipedia/feed/announcement/GeoIPCookieUnmarshaller$Component;->COUNTRY:Lorg/wikipedia/feed/announcement/GeoIPCookieUnmarshaller$Component;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget-object v2, p0, v2

    sget-object v3, Lorg/wikipedia/feed/announcement/GeoIPCookieUnmarshaller$Component;->REGION:Lorg/wikipedia/feed/announcement/GeoIPCookieUnmarshaller$Component;

    .line 53
    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aget-object v3, p0, v3

    sget-object v4, Lorg/wikipedia/feed/announcement/GeoIPCookieUnmarshaller$Component;->CITY:Lorg/wikipedia/feed/announcement/GeoIPCookieUnmarshaller$Component;

    .line 54
    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    aget-object p0, p0, v4

    invoke-direct {v1, v2, v3, p0, v0}, Lorg/wikipedia/feed/announcement/GeoIPCookie;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/location/Location;)V

    return-object v1

    .line 39
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Incorrect cookie version."

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 37
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Cookie is malformed."

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 33
    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Cookie is empty."

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
