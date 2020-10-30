.class public Lorg/wikipedia/dataclient/restbase/RbDefinition$Definition;
.super Ljava/lang/Object;
.source "RbDefinition.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/wikipedia/dataclient/restbase/RbDefinition;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Definition"
.end annotation


# instance fields
.field private definition:Ljava/lang/String;
    .annotation runtime Lorg/wikipedia/json/annotations/Required;
    .end annotation
.end field

.field private examples:[Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;[Ljava/lang/String;)V
    .locals 0

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    iput-object p1, p0, Lorg/wikipedia/dataclient/restbase/RbDefinition$Definition;->definition:Ljava/lang/String;

    .line 45
    iput-object p2, p0, Lorg/wikipedia/dataclient/restbase/RbDefinition$Definition;->examples:[Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getDefinition()Ljava/lang/String;
    .locals 1

    .line 49
    iget-object v0, p0, Lorg/wikipedia/dataclient/restbase/RbDefinition$Definition;->definition:Ljava/lang/String;

    return-object v0
.end method

.method public getExamples()[Ljava/lang/String;
    .locals 1

    .line 53
    iget-object v0, p0, Lorg/wikipedia/dataclient/restbase/RbDefinition$Definition;->examples:[Ljava/lang/String;

    return-object v0
.end method
