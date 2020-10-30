.class public Lorg/wikipedia/dataclient/mwapi/MwQueryPage$PageProps;
.super Ljava/lang/Object;
.source "MwQueryPage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/wikipedia/dataclient/mwapi/MwQueryPage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PageProps"
.end annotation


# instance fields
.field private disambiguation:Ljava/lang/String;

.field private displaytitle:Ljava/lang/String;

.field private wikiBaseItem:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "wikibase_item"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 234
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getDisplayTitle()Ljava/lang/String;
    .locals 1

    .line 240
    iget-object v0, p0, Lorg/wikipedia/dataclient/mwapi/MwQueryPage$PageProps;->displaytitle:Ljava/lang/String;

    return-object v0
.end method

.method public getWikiBaseItem()Ljava/lang/String;
    .locals 1

    .line 244
    iget-object v0, p0, Lorg/wikipedia/dataclient/mwapi/MwQueryPage$PageProps;->wikiBaseItem:Ljava/lang/String;

    invoke-static {v0}, Lorg/apache/commons/lang3/StringUtils;->defaultString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isDisambiguation()Z
    .locals 1

    .line 248
    iget-object v0, p0, Lorg/wikipedia/dataclient/mwapi/MwQueryPage$PageProps;->disambiguation:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
