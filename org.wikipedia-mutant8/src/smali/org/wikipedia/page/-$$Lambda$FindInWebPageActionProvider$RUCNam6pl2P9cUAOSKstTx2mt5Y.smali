.class public final synthetic Lorg/wikipedia/page/-$$Lambda$FindInWebPageActionProvider$RUCNam6pl2P9cUAOSKstTx2mt5Y;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/webkit/WebView$FindListener;


# instance fields
.field public final synthetic f$0:Lorg/wikipedia/page/FindInWebPageActionProvider;


# direct methods
.method public synthetic constructor <init>(Lorg/wikipedia/page/FindInWebPageActionProvider;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/wikipedia/page/-$$Lambda$FindInWebPageActionProvider$RUCNam6pl2P9cUAOSKstTx2mt5Y;->f$0:Lorg/wikipedia/page/FindInWebPageActionProvider;

    return-void
.end method


# virtual methods
.method public final onFindResultReceived(IIZ)V
    .locals 1

    iget-object v0, p0, Lorg/wikipedia/page/-$$Lambda$FindInWebPageActionProvider$RUCNam6pl2P9cUAOSKstTx2mt5Y;->f$0:Lorg/wikipedia/page/FindInWebPageActionProvider;

    invoke-virtual {v0, p1, p2, p3}, Lorg/wikipedia/page/FindInWebPageActionProvider;->lambda$findInPage$0$FindInWebPageActionProvider(IIZ)V

    return-void
.end method
