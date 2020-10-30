.class public final synthetic Lorg/wikipedia/page/-$$Lambda$PageFragment$iJUB_Do806-gYeFv1fQ2Drbapig;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lorg/wikipedia/views/ObservableWebView$OnUpOrCancelMotionEventListener;


# instance fields
.field public final synthetic f$0:Lorg/wikipedia/page/PageFragment;


# direct methods
.method public synthetic constructor <init>(Lorg/wikipedia/page/PageFragment;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/wikipedia/page/-$$Lambda$PageFragment$iJUB_Do806-gYeFv1fQ2Drbapig;->f$0:Lorg/wikipedia/page/PageFragment;

    return-void
.end method


# virtual methods
.method public final onUpOrCancelMotionEvent()V
    .locals 1

    iget-object v0, p0, Lorg/wikipedia/page/-$$Lambda$PageFragment$iJUB_Do806-gYeFv1fQ2Drbapig;->f$0:Lorg/wikipedia/page/PageFragment;

    invoke-virtual {v0}, Lorg/wikipedia/page/PageFragment;->lambda$initWebViewListeners$2$PageFragment()V

    return-void
.end method
