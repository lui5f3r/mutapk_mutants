.class Lorg/wikipedia/dataclient/mwapi/MwQueryResult$Redirect;
.super Ljava/lang/Object;
.source "MwQueryResult.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/wikipedia/dataclient/mwapi/MwQueryResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Redirect"
.end annotation


# instance fields
.field private from:Ljava/lang/String;

.field private index:I

.field private to:Ljava/lang/String;

.field private toFragment:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "tofragment"
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 177
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public from()Ljava/lang/String;
    .locals 1

    .line 188
    iget-object v0, p0, Lorg/wikipedia/dataclient/mwapi/MwQueryResult$Redirect;->from:Ljava/lang/String;

    return-object v0
.end method

.method public to()Ljava/lang/String;
    .locals 1

    .line 184
    iget-object v0, p0, Lorg/wikipedia/dataclient/mwapi/MwQueryResult$Redirect;->to:Ljava/lang/String;

    return-object v0
.end method

.method public toFragment()Ljava/lang/String;
    .locals 1

    .line 192
    iget-object v0, p0, Lorg/wikipedia/dataclient/mwapi/MwQueryResult$Redirect;->toFragment:Ljava/lang/String;

    return-object v0
.end method
