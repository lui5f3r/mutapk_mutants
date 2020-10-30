.class public final synthetic Lorg/wikipedia/feed/onthisday/-$$Lambda$OnThisDayFragment$Ts-d8T3eb8ZjxY9YD7BQ3rVQRfE;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lorg/wikipedia/feed/onthisday/OnThisDayFragment;

.field public final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>(Lorg/wikipedia/feed/onthisday/OnThisDayFragment;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/wikipedia/feed/onthisday/-$$Lambda$OnThisDayFragment$Ts-d8T3eb8ZjxY9YD7BQ3rVQRfE;->f$0:Lorg/wikipedia/feed/onthisday/OnThisDayFragment;

    iput p2, p0, Lorg/wikipedia/feed/onthisday/-$$Lambda$OnThisDayFragment$Ts-d8T3eb8ZjxY9YD7BQ3rVQRfE;->f$1:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lorg/wikipedia/feed/onthisday/-$$Lambda$OnThisDayFragment$Ts-d8T3eb8ZjxY9YD7BQ3rVQRfE;->f$0:Lorg/wikipedia/feed/onthisday/OnThisDayFragment;

    iget v1, p0, Lorg/wikipedia/feed/onthisday/-$$Lambda$OnThisDayFragment$Ts-d8T3eb8ZjxY9YD7BQ3rVQRfE;->f$1:I

    invoke-virtual {v0, v1}, Lorg/wikipedia/feed/onthisday/OnThisDayFragment;->lambda$onCreateView$2$OnThisDayFragment(I)V

    return-void
.end method
