.class public final synthetic Lorg/wikipedia/edit/-$$Lambda$EditSectionActivity$75-iKS0t0rzVsr5VURSKKHFKiF8;
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

    iput-object p1, p0, Lorg/wikipedia/edit/-$$Lambda$EditSectionActivity$75-iKS0t0rzVsr5VURSKKHFKiF8;->f$0:Lorg/wikipedia/edit/EditSectionActivity;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lorg/wikipedia/edit/-$$Lambda$EditSectionActivity$75-iKS0t0rzVsr5VURSKKHFKiF8;->f$0:Lorg/wikipedia/edit/EditSectionActivity;

    check-cast p1, Ljava/lang/Throwable;

    invoke-virtual {v0, p1}, Lorg/wikipedia/edit/EditSectionActivity;->lambda$fetchSectionText$13$EditSectionActivity(Ljava/lang/Throwable;)V

    return-void
.end method
