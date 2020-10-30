.class Lorg/wikipedia/search/PrefixSearchResponse$SearchInfo;
.super Ljava/lang/Object;
.source "PrefixSearchResponse.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/wikipedia/search/PrefixSearchResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "SearchInfo"
.end annotation


# instance fields
.field private snippet:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "suggestionsnippet"
    .end annotation
.end field

.field private suggestion:Ljava/lang/String;


# direct methods
.method constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public suggestion()Ljava/lang/String;
    .locals 1

    .line 23
    iget-object v0, p0, Lorg/wikipedia/search/PrefixSearchResponse$SearchInfo;->suggestion:Ljava/lang/String;

    return-object v0
.end method
