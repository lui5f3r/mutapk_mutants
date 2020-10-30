.class public Lorg/wikipedia/dataclient/wikidata/Claims$TimeValue;
.super Ljava/lang/Object;
.source "Claims.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/wikipedia/dataclient/wikidata/Claims;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TimeValue"
.end annotation


# instance fields
.field private after:I

.field private before:I

.field private precision:I

.field private time:Ljava/lang/String;

.field private timezone:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getTime()Ljava/lang/String;
    .locals 1

    .line 88
    iget-object v0, p0, Lorg/wikipedia/dataclient/wikidata/Claims$TimeValue;->time:Ljava/lang/String;

    invoke-static {v0}, Lorg/apache/commons/lang3/StringUtils;->defaultString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
