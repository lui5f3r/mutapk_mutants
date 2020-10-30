.class public Lorg/wikipedia/dataclient/wikidata/Claims$MainSnak;
.super Ljava/lang/Object;
.source "Claims.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/wikipedia/dataclient/wikidata/Claims;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MainSnak"
.end annotation


# instance fields
.field private dataType:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "datatype"
    .end annotation
.end field

.field private dataValue:Lorg/wikipedia/dataclient/wikidata/Claims$DataValue;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "datavalue"
    .end annotation
.end field

.field private hash:Ljava/lang/String;

.field private property:Ljava/lang/String;

.field private snakType:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "snaktype"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getDataValue()Lorg/wikipedia/dataclient/wikidata/Claims$DataValue;
    .locals 1

    .line 46
    iget-object v0, p0, Lorg/wikipedia/dataclient/wikidata/Claims$MainSnak;->dataValue:Lorg/wikipedia/dataclient/wikidata/Claims$DataValue;

    return-object v0
.end method
