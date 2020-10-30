.class public Lorg/wikipedia/search/PrefixSearchResponse;
.super Lorg/wikipedia/dataclient/mwapi/MwQueryResponse;
.source "PrefixSearchResponse.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/wikipedia/search/PrefixSearchResponse$Search;,
        Lorg/wikipedia/search/PrefixSearchResponse$SearchInfo;
    }
.end annotation


# instance fields
.field private search:Lorg/wikipedia/search/PrefixSearchResponse$Search;

.field private searchInfo:Lorg/wikipedia/search/PrefixSearchResponse$SearchInfo;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "searchinfo"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Lorg/wikipedia/dataclient/mwapi/MwQueryResponse;-><init>()V

    return-void
.end method


# virtual methods
.method suggestion()Ljava/lang/String;
    .locals 1

    .line 14
    iget-object v0, p0, Lorg/wikipedia/search/PrefixSearchResponse;->searchInfo:Lorg/wikipedia/search/PrefixSearchResponse$SearchInfo;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/wikipedia/search/PrefixSearchResponse$SearchInfo;->suggestion()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method
