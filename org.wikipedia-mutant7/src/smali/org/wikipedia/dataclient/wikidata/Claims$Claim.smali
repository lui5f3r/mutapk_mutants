.class public Lorg/wikipedia/dataclient/wikidata/Claims$Claim;
.super Ljava/lang/Object;
.source "Claims.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/wikipedia/dataclient/wikidata/Claims;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Claim"
.end annotation


# instance fields
.field private id:Ljava/lang/String;

.field private mainSnak:Lorg/wikipedia/dataclient/wikidata/Claims$MainSnak;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "mainsnak"
    .end annotation
.end field

.field private rank:Ljava/lang/String;

.field private type:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getMainSnak()Lorg/wikipedia/dataclient/wikidata/Claims$MainSnak;
    .locals 1

    .line 34
    iget-object v0, p0, Lorg/wikipedia/dataclient/wikidata/Claims$Claim;->mainSnak:Lorg/wikipedia/dataclient/wikidata/Claims$MainSnak;

    return-object v0
.end method
