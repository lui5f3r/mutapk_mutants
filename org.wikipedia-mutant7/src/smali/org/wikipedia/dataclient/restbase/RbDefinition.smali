.class public Lorg/wikipedia/dataclient/restbase/RbDefinition;
.super Ljava/lang/Object;
.source "RbDefinition.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/wikipedia/dataclient/restbase/RbDefinition$Definition;,
        Lorg/wikipedia/dataclient/restbase/RbDefinition$Usage;
    }
.end annotation


# instance fields
.field private usagesByLang:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "[",
            "Lorg/wikipedia/dataclient/restbase/RbDefinition$Usage;",
            ">;"
        }
    .end annotation

    .annotation runtime Lorg/wikipedia/json/annotations/Required;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "[",
            "Lorg/wikipedia/dataclient/restbase/RbDefinition$Usage;",
            ">;)V"
        }
    .end annotation

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput-object p1, p0, Lorg/wikipedia/dataclient/restbase/RbDefinition;->usagesByLang:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public getUsagesForLang(Ljava/lang/String;)[Lorg/wikipedia/dataclient/restbase/RbDefinition$Usage;
    .locals 1

    .line 18
    iget-object v0, p0, Lorg/wikipedia/dataclient/restbase/RbDefinition;->usagesByLang:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lorg/wikipedia/dataclient/restbase/RbDefinition$Usage;

    return-object p1
.end method
