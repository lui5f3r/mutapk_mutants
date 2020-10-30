.class public Lorg/wikipedia/gallery/ImageLicense;
.super Ljava/lang/Object;
.source "ImageLicense.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final CC_BY_SA:Ljava/lang/String; = "ccbysa"

.field private static final CREATIVE_COMMONS_PREFIX:Ljava/lang/String; = "cc"

.field private static final PUBLIC_DOMAIN_PREFIX:Ljava/lang/String; = "pd"


# instance fields
.field private final license:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "type"
    .end annotation
.end field

.field private final licenseShortName:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "code"
    .end annotation
.end field

.field private final licenseUrl:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "url"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    const-string v0, ""

    .line 37
    invoke-direct {p0, v0, v0, v0}, Lorg/wikipedia/gallery/ImageLicense;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-object p1, p0, Lorg/wikipedia/gallery/ImageLicense;->license:Ljava/lang/String;

    .line 32
    iput-object p2, p0, Lorg/wikipedia/gallery/ImageLicense;->licenseShortName:Ljava/lang/String;

    .line 33
    iput-object p3, p0, Lorg/wikipedia/gallery/ImageLicense;->licenseUrl:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lorg/wikipedia/gallery/ExtMetadata;)V
    .locals 1

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    invoke-virtual {p1}, Lorg/wikipedia/gallery/ExtMetadata;->license()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/wikipedia/gallery/ImageLicense;->license:Ljava/lang/String;

    .line 26
    invoke-virtual {p1}, Lorg/wikipedia/gallery/ExtMetadata;->licenseShortName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/wikipedia/gallery/ImageLicense;->licenseShortName:Ljava/lang/String;

    .line 27
    invoke-virtual {p1}, Lorg/wikipedia/gallery/ExtMetadata;->licenseUrl()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/wikipedia/gallery/ImageLicense;->licenseUrl:Ljava/lang/String;

    return-void
.end method

.method private isLicenseCC()Z
    .locals 3

    .line 53
    iget-object v0, p0, Lorg/wikipedia/gallery/ImageLicense;->license:Ljava/lang/String;

    invoke-static {v0}, Lorg/apache/commons/lang3/StringUtils;->defaultString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "cc"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/wikipedia/gallery/ImageLicense;->licenseShortName:Ljava/lang/String;

    .line 54
    invoke-static {v0}, Lorg/apache/commons/lang3/StringUtils;->defaultString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v2, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v0, v2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method private isLicenseCCBySa()Z
    .locals 5

    .line 63
    iget-object v0, p0, Lorg/wikipedia/gallery/ImageLicense;->license:Ljava/lang/String;

    invoke-static {v0}, Lorg/apache/commons/lang3/StringUtils;->defaultString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "-"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    const-string v3, "ccbysa"

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/wikipedia/gallery/ImageLicense;->licenseShortName:Ljava/lang/String;

    .line 64
    invoke-static {v0}, Lorg/apache/commons/lang3/StringUtils;->defaultString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v4, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v0, v4}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method private isLicensePD()Z
    .locals 3

    .line 58
    iget-object v0, p0, Lorg/wikipedia/gallery/ImageLicense;->license:Ljava/lang/String;

    invoke-static {v0}, Lorg/apache/commons/lang3/StringUtils;->defaultString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "pd"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/wikipedia/gallery/ImageLicense;->licenseShortName:Ljava/lang/String;

    .line 59
    invoke-static {v0}, Lorg/apache/commons/lang3/StringUtils;->defaultString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v2, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v0, v2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method


# virtual methods
.method public getLicenseIcon()I
    .locals 1

    .line 72
    invoke-direct {p0}, Lorg/wikipedia/gallery/ImageLicense;->isLicensePD()Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x7f0800e9

    return v0

    .line 75
    :cond_0
    invoke-direct {p0}, Lorg/wikipedia/gallery/ImageLicense;->isLicenseCCBySa()Z

    move-result v0

    if-eqz v0, :cond_1

    const v0, 0x7f0800e6

    return v0

    .line 78
    :cond_1
    invoke-direct {p0}, Lorg/wikipedia/gallery/ImageLicense;->isLicenseCC()Z

    move-result v0

    if-eqz v0, :cond_2

    const v0, 0x7f0800e7

    return v0

    :cond_2
    const v0, 0x7f0800e8

    return v0
.end method

.method public getLicenseName()Ljava/lang/String;
    .locals 1

    .line 41
    iget-object v0, p0, Lorg/wikipedia/gallery/ImageLicense;->license:Ljava/lang/String;

    return-object v0
.end method

.method public getLicenseShortName()Ljava/lang/String;
    .locals 1

    .line 45
    iget-object v0, p0, Lorg/wikipedia/gallery/ImageLicense;->licenseShortName:Ljava/lang/String;

    return-object v0
.end method

.method public getLicenseUrl()Ljava/lang/String;
    .locals 1

    .line 49
    iget-object v0, p0, Lorg/wikipedia/gallery/ImageLicense;->licenseUrl:Ljava/lang/String;

    return-object v0
.end method

.method public hasLicenseInfo()Z
    .locals 1

    .line 85
    iget-object v0, p0, Lorg/wikipedia/gallery/ImageLicense;->license:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/wikipedia/gallery/ImageLicense;->licenseShortName:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/wikipedia/gallery/ImageLicense;->licenseUrl:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method
