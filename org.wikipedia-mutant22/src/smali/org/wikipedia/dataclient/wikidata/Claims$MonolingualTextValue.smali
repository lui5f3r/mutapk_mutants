.class public Lorg/wikipedia/dataclient/wikidata/Claims$MonolingualTextValue;
.super Ljava/lang/Object;
.source "Claims.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/wikipedia/dataclient/wikidata/Claims;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MonolingualTextValue"
.end annotation


# instance fields
.field private language:Ljava/lang/String;

.field private text:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 92
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getText()Ljava/lang/String;
    .locals 1

    .line 97
    iget-object v0, p0, Lorg/wikipedia/dataclient/wikidata/Claims$MonolingualTextValue;->text:Ljava/lang/String;

    invoke-static {v0}, Lorg/apache/commons/lang3/StringUtils;->defaultString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
