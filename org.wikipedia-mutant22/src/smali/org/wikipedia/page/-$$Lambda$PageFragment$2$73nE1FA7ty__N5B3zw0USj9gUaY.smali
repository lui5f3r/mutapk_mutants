.class public final synthetic Lorg/wikipedia/page/-$$Lambda$PageFragment$2$73nE1FA7ty__N5B3zw0USj9gUaY;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/webkit/ValueCallback;


# instance fields
.field public final synthetic f$0:Lorg/wikipedia/page/PageFragment$2;


# direct methods
.method public synthetic constructor <init>(Lorg/wikipedia/page/PageFragment$2;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/wikipedia/page/-$$Lambda$PageFragment$2$73nE1FA7ty__N5B3zw0USj9gUaY;->f$0:Lorg/wikipedia/page/PageFragment$2;

    return-void
.end method


# virtual methods
.method public final onReceiveValue(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lorg/wikipedia/page/-$$Lambda$PageFragment$2$73nE1FA7ty__N5B3zw0USj9gUaY;->f$0:Lorg/wikipedia/page/PageFragment$2;

    check-cast p1, Ljava/lang/String;

    invoke-virtual {v0, p1}, Lorg/wikipedia/page/PageFragment$2;->lambda$onPageFinished$0$PageFragment$2(Ljava/lang/String;)V

    return-void
.end method
