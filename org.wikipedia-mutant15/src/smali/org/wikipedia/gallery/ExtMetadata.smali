.class public Lorg/wikipedia/gallery/ExtMetadata;
.super Ljava/lang/Object;
.source "ExtMetadata.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/wikipedia/gallery/ExtMetadata$Values;
    }
.end annotation


# instance fields
.field private artist:Lorg/wikipedia/gallery/ExtMetadata$Values;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "Artist"
    .end annotation
.end field

.field private assessments:Lorg/wikipedia/gallery/ExtMetadata$Values;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "Assessments"
    .end annotation
.end field

.field private attributionRequired:Lorg/wikipedia/gallery/ExtMetadata$Values;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "AttributionRequired"
    .end annotation
.end field

.field private authorCount:Lorg/wikipedia/gallery/ExtMetadata$Values;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "AuthorCount"
    .end annotation
.end field

.field private categories:Lorg/wikipedia/gallery/ExtMetadata$Values;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "Categories"
    .end annotation
.end field

.field private commonsMetadataExtension:Lorg/wikipedia/gallery/ExtMetadata$Values;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "CommonsMetadataExtension"
    .end annotation
.end field

.field private copyrighted:Lorg/wikipedia/gallery/ExtMetadata$Values;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "Copyrighted"
    .end annotation
.end field

.field private credit:Lorg/wikipedia/gallery/ExtMetadata$Values;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "Credit"
    .end annotation
.end field

.field private dateTime:Lorg/wikipedia/gallery/ExtMetadata$Values;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "DateTime"
    .end annotation
.end field

.field private dateTimeOriginal:Lorg/wikipedia/gallery/ExtMetadata$Values;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "DateTimeOriginal"
    .end annotation
.end field

.field private imageDescription:Lorg/wikipedia/gallery/ExtMetadata$Values;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "ImageDescription"
    .end annotation
.end field

.field private license:Lorg/wikipedia/gallery/ExtMetadata$Values;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "License"
    .end annotation
.end field

.field private licenseShortName:Lorg/wikipedia/gallery/ExtMetadata$Values;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "LicenseShortName"
    .end annotation
.end field

.field private licenseUrl:Lorg/wikipedia/gallery/ExtMetadata$Values;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "LicenseUrl"
    .end annotation
.end field

.field private objectName:Lorg/wikipedia/gallery/ExtMetadata$Values;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "ObjectName"
    .end annotation
.end field

.field private permission:Lorg/wikipedia/gallery/ExtMetadata$Values;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "Permission"
    .end annotation
.end field

.field private restrictions:Lorg/wikipedia/gallery/ExtMetadata$Values;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "Restrictions"
    .end annotation
.end field

.field private usageTerms:Lorg/wikipedia/gallery/ExtMetadata$Values;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "UsageTerms"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public artist()Ljava/lang/String;
    .locals 1

    .line 64
    iget-object v0, p0, Lorg/wikipedia/gallery/ExtMetadata;->artist:Lorg/wikipedia/gallery/ExtMetadata$Values;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lorg/wikipedia/gallery/ExtMetadata$Values;->value()Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-static {v0}, Lorg/apache/commons/lang3/StringUtils;->defaultString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public credit()Ljava/lang/String;
    .locals 1

    .line 68
    iget-object v0, p0, Lorg/wikipedia/gallery/ExtMetadata;->credit:Lorg/wikipedia/gallery/ExtMetadata$Values;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lorg/wikipedia/gallery/ExtMetadata$Values;->value()Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-static {v0}, Lorg/apache/commons/lang3/StringUtils;->defaultString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public dateTime()Ljava/lang/String;
    .locals 1

    .line 60
    iget-object v0, p0, Lorg/wikipedia/gallery/ExtMetadata;->dateTimeOriginal:Lorg/wikipedia/gallery/ExtMetadata$Values;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lorg/wikipedia/gallery/ExtMetadata$Values;->value()Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-static {v0}, Lorg/apache/commons/lang3/StringUtils;->defaultString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public imageDescription()Ljava/lang/String;
    .locals 1

    .line 44
    iget-object v0, p0, Lorg/wikipedia/gallery/ExtMetadata;->imageDescription:Lorg/wikipedia/gallery/ExtMetadata$Values;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lorg/wikipedia/gallery/ExtMetadata$Values;->value()Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-static {v0}, Lorg/apache/commons/lang3/StringUtils;->defaultString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public imageDescriptionSource()Ljava/lang/String;
    .locals 1

    .line 48
    iget-object v0, p0, Lorg/wikipedia/gallery/ExtMetadata;->imageDescription:Lorg/wikipedia/gallery/ExtMetadata$Values;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lorg/wikipedia/gallery/ExtMetadata$Values;->source()Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-static {v0}, Lorg/apache/commons/lang3/StringUtils;->defaultString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public license()Ljava/lang/String;
    .locals 1

    .line 40
    iget-object v0, p0, Lorg/wikipedia/gallery/ExtMetadata;->license:Lorg/wikipedia/gallery/ExtMetadata$Values;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lorg/wikipedia/gallery/ExtMetadata$Values;->value()Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-static {v0}, Lorg/apache/commons/lang3/StringUtils;->defaultString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public licenseShortName()Ljava/lang/String;
    .locals 1

    .line 32
    iget-object v0, p0, Lorg/wikipedia/gallery/ExtMetadata;->licenseShortName:Lorg/wikipedia/gallery/ExtMetadata$Values;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lorg/wikipedia/gallery/ExtMetadata$Values;->value()Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-static {v0}, Lorg/apache/commons/lang3/StringUtils;->defaultString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public licenseUrl()Ljava/lang/String;
    .locals 1

    .line 36
    iget-object v0, p0, Lorg/wikipedia/gallery/ExtMetadata;->licenseUrl:Lorg/wikipedia/gallery/ExtMetadata$Values;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lorg/wikipedia/gallery/ExtMetadata$Values;->value()Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-static {v0}, Lorg/apache/commons/lang3/StringUtils;->defaultString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public objectName()Ljava/lang/String;
    .locals 1

    .line 52
    iget-object v0, p0, Lorg/wikipedia/gallery/ExtMetadata;->objectName:Lorg/wikipedia/gallery/ExtMetadata$Values;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lorg/wikipedia/gallery/ExtMetadata$Values;->value()Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-static {v0}, Lorg/apache/commons/lang3/StringUtils;->defaultString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public usageTerms()Ljava/lang/String;
    .locals 1

    .line 56
    iget-object v0, p0, Lorg/wikipedia/gallery/ExtMetadata;->usageTerms:Lorg/wikipedia/gallery/ExtMetadata$Values;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lorg/wikipedia/gallery/ExtMetadata$Values;->value()Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-static {v0}, Lorg/apache/commons/lang3/StringUtils;->defaultString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
