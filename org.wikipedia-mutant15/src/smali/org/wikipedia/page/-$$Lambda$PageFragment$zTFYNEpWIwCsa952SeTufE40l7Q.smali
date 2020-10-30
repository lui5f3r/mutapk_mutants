.class public final synthetic Lorg/wikipedia/page/-$$Lambda$PageFragment$zTFYNEpWIwCsa952SeTufE40l7Q;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lorg/wikipedia/page/PageFragment;

.field public final synthetic f$1:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lorg/wikipedia/page/PageFragment;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/wikipedia/page/-$$Lambda$PageFragment$zTFYNEpWIwCsa952SeTufE40l7Q;->f$0:Lorg/wikipedia/page/PageFragment;

    iput-object p2, p0, Lorg/wikipedia/page/-$$Lambda$PageFragment$zTFYNEpWIwCsa952SeTufE40l7Q;->f$1:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lorg/wikipedia/page/-$$Lambda$PageFragment$zTFYNEpWIwCsa952SeTufE40l7Q;->f$0:Lorg/wikipedia/page/PageFragment;

    iget-object v1, p0, Lorg/wikipedia/page/-$$Lambda$PageFragment$zTFYNEpWIwCsa952SeTufE40l7Q;->f$1:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lorg/wikipedia/page/PageFragment;->lambda$null$25$PageFragment(Ljava/lang/String;)V

    return-void
.end method
