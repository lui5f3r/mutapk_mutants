.class Lorg/wikipedia/search/PrefixSearchResponse$Search;
.super Ljava/lang/Object;
.source "PrefixSearchResponse.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/wikipedia/search/PrefixSearchResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Search"
.end annotation


# instance fields
.field private namespace:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "ns"
    .end annotation
.end field

.field private title:Ljava/lang/String;


# direct methods
.method constructor <init>()V
    .locals 0

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
