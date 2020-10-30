.class public Lorg/wikipedia/dataclient/mwapi/MwQueryResult$ConvertedTitle;
.super Ljava/lang/Object;
.source "MwQueryResult.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/wikipedia/dataclient/mwapi/MwQueryResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ConvertedTitle"
.end annotation


# instance fields
.field private from:Ljava/lang/String;

.field private to:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 196
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public from()Ljava/lang/String;
    .locals 1

    .line 205
    iget-object v0, p0, Lorg/wikipedia/dataclient/mwapi/MwQueryResult$ConvertedTitle;->from:Ljava/lang/String;

    return-object v0
.end method

.method public to()Ljava/lang/String;
    .locals 1

    .line 201
    iget-object v0, p0, Lorg/wikipedia/dataclient/mwapi/MwQueryResult$ConvertedTitle;->to:Ljava/lang/String;

    return-object v0
.end method
