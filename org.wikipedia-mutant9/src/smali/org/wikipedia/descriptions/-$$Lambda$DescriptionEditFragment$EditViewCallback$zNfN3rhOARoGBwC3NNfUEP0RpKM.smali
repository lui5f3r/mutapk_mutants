.class public final synthetic Lorg/wikipedia/descriptions/-$$Lambda$DescriptionEditFragment$EditViewCallback$zNfN3rhOARoGBwC3NNfUEP0RpKM;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lio/reactivex/rxjava3/functions/Consumer;


# instance fields
.field public final synthetic f$0:Lorg/wikipedia/descriptions/DescriptionEditFragment$EditViewCallback;


# direct methods
.method public synthetic constructor <init>(Lorg/wikipedia/descriptions/DescriptionEditFragment$EditViewCallback;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/wikipedia/descriptions/-$$Lambda$DescriptionEditFragment$EditViewCallback$zNfN3rhOARoGBwC3NNfUEP0RpKM;->f$0:Lorg/wikipedia/descriptions/DescriptionEditFragment$EditViewCallback;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lorg/wikipedia/descriptions/-$$Lambda$DescriptionEditFragment$EditViewCallback$zNfN3rhOARoGBwC3NNfUEP0RpKM;->f$0:Lorg/wikipedia/descriptions/DescriptionEditFragment$EditViewCallback;

    check-cast p1, Lorg/wikipedia/dataclient/wikidata/EntityPostResponse;

    invoke-virtual {v0, p1}, Lorg/wikipedia/descriptions/DescriptionEditFragment$EditViewCallback;->lambda$postDescription$1$DescriptionEditFragment$EditViewCallback(Lorg/wikipedia/dataclient/wikidata/EntityPostResponse;)V

    return-void
.end method
