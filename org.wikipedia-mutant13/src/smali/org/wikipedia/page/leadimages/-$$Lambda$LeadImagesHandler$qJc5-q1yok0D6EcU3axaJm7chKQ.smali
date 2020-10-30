.class public final synthetic Lorg/wikipedia/page/leadimages/-$$Lambda$LeadImagesHandler$qJc5-q1yok0D6EcU3axaJm7chKQ;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lio/reactivex/rxjava3/functions/Consumer;


# instance fields
.field public final synthetic f$0:Lorg/wikipedia/page/leadimages/LeadImagesHandler;


# direct methods
.method public synthetic constructor <init>(Lorg/wikipedia/page/leadimages/LeadImagesHandler;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/wikipedia/page/leadimages/-$$Lambda$LeadImagesHandler$qJc5-q1yok0D6EcU3axaJm7chKQ;->f$0:Lorg/wikipedia/page/leadimages/LeadImagesHandler;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lorg/wikipedia/page/leadimages/-$$Lambda$LeadImagesHandler$qJc5-q1yok0D6EcU3axaJm7chKQ;->f$0:Lorg/wikipedia/page/leadimages/LeadImagesHandler;

    check-cast p1, Ljava/util/Map;

    invoke-virtual {v0, p1}, Lorg/wikipedia/page/leadimages/LeadImagesHandler;->lambda$updateCallToAction$3$LeadImagesHandler(Ljava/util/Map;)V

    return-void
.end method
