.class public final synthetic Lorg/wikipedia/edit/-$$Lambda$EditSectionActivity$jFERlIwG85v6fuXesO7ox0W7bYg;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lorg/wikipedia/edit/EditSectionActivity;

.field public final synthetic f$1:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lorg/wikipedia/edit/EditSectionActivity;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/wikipedia/edit/-$$Lambda$EditSectionActivity$jFERlIwG85v6fuXesO7ox0W7bYg;->f$0:Lorg/wikipedia/edit/EditSectionActivity;

    iput-object p2, p0, Lorg/wikipedia/edit/-$$Lambda$EditSectionActivity$jFERlIwG85v6fuXesO7ox0W7bYg;->f$1:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lorg/wikipedia/edit/-$$Lambda$EditSectionActivity$jFERlIwG85v6fuXesO7ox0W7bYg;->f$0:Lorg/wikipedia/edit/EditSectionActivity;

    iget-object v1, p0, Lorg/wikipedia/edit/-$$Lambda$EditSectionActivity$jFERlIwG85v6fuXesO7ox0W7bYg;->f$1:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lorg/wikipedia/edit/EditSectionActivity;->lambda$scrollToHighlight$15$EditSectionActivity(Ljava/lang/String;)V

    return-void
.end method
