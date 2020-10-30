.class public Lorg/wikipedia/dataclient/wikidata/EntityPostResponse;
.super Lorg/wikipedia/dataclient/mwapi/MwPostResponse;
.source "EntityPostResponse.java"


# instance fields
.field private entity:Lorg/wikipedia/dataclient/wikidata/Entities$Entity;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Lorg/wikipedia/dataclient/mwapi/MwPostResponse;-><init>()V

    return-void
.end method


# virtual methods
.method public getEntity()Lorg/wikipedia/dataclient/wikidata/Entities$Entity;
    .locals 1

    .line 12
    iget-object v0, p0, Lorg/wikipedia/dataclient/wikidata/EntityPostResponse;->entity:Lorg/wikipedia/dataclient/wikidata/Entities$Entity;

    return-object v0
.end method
