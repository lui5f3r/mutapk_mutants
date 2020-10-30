.class public final synthetic Lorg/wikipedia/page/-$$Lambda$PageFragment$3PwJnQJpu1AQ6afkuMtwNcX1TNM;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/webkit/ValueCallback;


# instance fields
.field public final synthetic f$0:Lorg/wikipedia/page/PageFragment;


# direct methods
.method public synthetic constructor <init>(Lorg/wikipedia/page/PageFragment;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/wikipedia/page/-$$Lambda$PageFragment$3PwJnQJpu1AQ6afkuMtwNcX1TNM;->f$0:Lorg/wikipedia/page/PageFragment;

    return-void
.end method


# virtual methods
.method public final onReceiveValue(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lorg/wikipedia/page/-$$Lambda$PageFragment$3PwJnQJpu1AQ6afkuMtwNcX1TNM;->f$0:Lorg/wikipedia/page/PageFragment;

    check-cast p1, Ljava/lang/String;

    invoke-virtual {v0, p1}, Lorg/wikipedia/page/PageFragment;->lambda$onPageSetupEvent$5$PageFragment(Ljava/lang/String;)V

    return-void
.end method
