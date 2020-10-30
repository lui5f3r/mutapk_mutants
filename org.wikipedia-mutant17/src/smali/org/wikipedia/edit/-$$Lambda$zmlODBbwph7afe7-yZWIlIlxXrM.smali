.class public final synthetic Lorg/wikipedia/edit/-$$Lambda$zmlODBbwph7afe7-yZWIlIlxXrM;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lio/reactivex/rxjava3/functions/Consumer;


# instance fields
.field public final synthetic f$0:Lorg/wikipedia/edit/EditSectionActivity;


# direct methods
.method public synthetic constructor <init>(Lorg/wikipedia/edit/EditSectionActivity;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/wikipedia/edit/-$$Lambda$zmlODBbwph7afe7-yZWIlIlxXrM;->f$0:Lorg/wikipedia/edit/EditSectionActivity;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lorg/wikipedia/edit/-$$Lambda$zmlODBbwph7afe7-yZWIlIlxXrM;->f$0:Lorg/wikipedia/edit/EditSectionActivity;

    check-cast p1, Ljava/lang/Throwable;

    invoke-virtual {v0, p1}, Lorg/wikipedia/edit/EditSectionActivity;->onEditFailure(Ljava/lang/Throwable;)V

    return-void
.end method
