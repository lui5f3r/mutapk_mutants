.class public final synthetic Lorg/wikipedia/descriptions/-$$Lambda$DescriptionEditFragment$EditViewCallback$3Jk28k72_lmrt1cCjvGyKdtDvfk;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lio/reactivex/rxjava3/functions/Function;


# instance fields
.field public final synthetic f$0:Lorg/wikipedia/descriptions/DescriptionEditFragment$EditViewCallback;

.field public final synthetic f$1:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lorg/wikipedia/descriptions/DescriptionEditFragment$EditViewCallback;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/wikipedia/descriptions/-$$Lambda$DescriptionEditFragment$EditViewCallback$3Jk28k72_lmrt1cCjvGyKdtDvfk;->f$0:Lorg/wikipedia/descriptions/DescriptionEditFragment$EditViewCallback;

    iput-object p2, p0, Lorg/wikipedia/descriptions/-$$Lambda$DescriptionEditFragment$EditViewCallback$3Jk28k72_lmrt1cCjvGyKdtDvfk;->f$1:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lorg/wikipedia/descriptions/-$$Lambda$DescriptionEditFragment$EditViewCallback$3Jk28k72_lmrt1cCjvGyKdtDvfk;->f$0:Lorg/wikipedia/descriptions/DescriptionEditFragment$EditViewCallback;

    iget-object v1, p0, Lorg/wikipedia/descriptions/-$$Lambda$DescriptionEditFragment$EditViewCallback$3Jk28k72_lmrt1cCjvGyKdtDvfk;->f$1:Ljava/lang/String;

    check-cast p1, Lorg/wikipedia/dataclient/mwapi/MwQueryResponse;

    invoke-virtual {v0, v1, p1}, Lorg/wikipedia/descriptions/DescriptionEditFragment$EditViewCallback;->lambda$postDescription$0$DescriptionEditFragment$EditViewCallback(Ljava/lang/String;Lorg/wikipedia/dataclient/mwapi/MwQueryResponse;)Lio/reactivex/rxjava3/core/ObservableSource;

    move-result-object p1

    return-object p1
.end method
