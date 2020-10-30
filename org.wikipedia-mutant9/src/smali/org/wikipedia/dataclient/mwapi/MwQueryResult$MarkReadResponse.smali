.class public Lorg/wikipedia/dataclient/mwapi/MwQueryResult$MarkReadResponse;
.super Ljava/lang/Object;
.source "MwQueryResult.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/wikipedia/dataclient/mwapi/MwQueryResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MarkReadResponse"
.end annotation


# instance fields
.field private result:Ljava/lang/String;

.field private timestamp:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 230
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getResult()Ljava/lang/String;
    .locals 1

    .line 235
    iget-object v0, p0, Lorg/wikipedia/dataclient/mwapi/MwQueryResult$MarkReadResponse;->result:Ljava/lang/String;

    return-object v0
.end method

.method public getTimestamp()Ljava/lang/String;
    .locals 1

    .line 239
    iget-object v0, p0, Lorg/wikipedia/dataclient/mwapi/MwQueryResult$MarkReadResponse;->timestamp:Ljava/lang/String;

    return-object v0
.end method
