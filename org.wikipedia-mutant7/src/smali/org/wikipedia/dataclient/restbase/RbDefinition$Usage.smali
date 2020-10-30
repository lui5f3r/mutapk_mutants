.class public Lorg/wikipedia/dataclient/restbase/RbDefinition$Usage;
.super Ljava/lang/Object;
.source "RbDefinition.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/wikipedia/dataclient/restbase/RbDefinition;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Usage"
.end annotation


# instance fields
.field private definitions:[Lorg/wikipedia/dataclient/restbase/RbDefinition$Definition;
    .annotation runtime Lorg/wikipedia/json/annotations/Required;
    .end annotation
.end field

.field private partOfSpeech:Ljava/lang/String;
    .annotation runtime Lorg/wikipedia/json/annotations/Required;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;[Lorg/wikipedia/dataclient/restbase/RbDefinition$Definition;)V
    .locals 0

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput-object p1, p0, Lorg/wikipedia/dataclient/restbase/RbDefinition$Usage;->partOfSpeech:Ljava/lang/String;

    .line 27
    iput-object p2, p0, Lorg/wikipedia/dataclient/restbase/RbDefinition$Usage;->definitions:[Lorg/wikipedia/dataclient/restbase/RbDefinition$Definition;

    return-void
.end method


# virtual methods
.method public getDefinitions()[Lorg/wikipedia/dataclient/restbase/RbDefinition$Definition;
    .locals 1

    .line 35
    iget-object v0, p0, Lorg/wikipedia/dataclient/restbase/RbDefinition$Usage;->definitions:[Lorg/wikipedia/dataclient/restbase/RbDefinition$Definition;

    return-object v0
.end method

.method public getPartOfSpeech()Ljava/lang/String;
    .locals 1

    .line 31
    iget-object v0, p0, Lorg/wikipedia/dataclient/restbase/RbDefinition$Usage;->partOfSpeech:Ljava/lang/String;

    return-object v0
.end method
