.class public Lorg/wikipedia/settings/SiteInfo;
.super Ljava/lang/Object;
.source "SiteInfo.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/wikipedia/settings/SiteInfo$LanguageVariants;,
        Lorg/wikipedia/settings/SiteInfo$ReadingListsConfig;
    }
.end annotation


# instance fields
.field private lang:Ljava/lang/String;

.field private mainpage:Ljava/lang/String;

.field private readingListsConfig:Lorg/wikipedia/settings/SiteInfo$ReadingListsConfig;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "readinglists-config"
    .end annotation
.end field

.field private sitename:Ljava/lang/String;

.field private variants:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/wikipedia/settings/SiteInfo$LanguageVariants;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public hasVariants()Z
    .locals 1

    .line 30
    iget-object v0, p0, Lorg/wikipedia/settings/SiteInfo;->variants:Ljava/util/List;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public lang()Ljava/lang/String;
    .locals 1

    .line 26
    iget-object v0, p0, Lorg/wikipedia/settings/SiteInfo;->lang:Ljava/lang/String;

    return-object v0
.end method

.method public mainPage()Ljava/lang/String;
    .locals 1

    .line 18
    iget-object v0, p0, Lorg/wikipedia/settings/SiteInfo;->mainpage:Ljava/lang/String;

    return-object v0
.end method

.method public readingListsConfig()Lorg/wikipedia/settings/SiteInfo$ReadingListsConfig;
    .locals 1

    .line 22
    iget-object v0, p0, Lorg/wikipedia/settings/SiteInfo;->readingListsConfig:Lorg/wikipedia/settings/SiteInfo$ReadingListsConfig;

    return-object v0
.end method
