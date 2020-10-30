.class public Lorg/wikipedia/dataclient/mwapi/MwParseResponse;
.super Lorg/wikipedia/dataclient/mwapi/MwResponse;
.source "MwParseResponse.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/wikipedia/dataclient/mwapi/MwParseResponse$Parse;
    }
.end annotation


# instance fields
.field private parse:Lorg/wikipedia/dataclient/mwapi/MwParseResponse$Parse;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Lorg/wikipedia/dataclient/mwapi/MwResponse;-><init>()V

    return-void
.end method


# virtual methods
.method public getText()Ljava/lang/String;
    .locals 1

    .line 13
    iget-object v0, p0, Lorg/wikipedia/dataclient/mwapi/MwParseResponse;->parse:Lorg/wikipedia/dataclient/mwapi/MwParseResponse$Parse;

    if-eqz v0, :cond_0

    invoke-static {v0}, Lorg/wikipedia/dataclient/mwapi/MwParseResponse$Parse;->access$000(Lorg/wikipedia/dataclient/mwapi/MwParseResponse$Parse;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lorg/apache/commons/lang3/StringUtils;->defaultString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
