.class final Lorg/wikipedia/views/MessageCardView$setIPBlocked$1;
.super Ljava/lang/Object;
.source "MessageCardView.kt"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/wikipedia/views/MessageCardView;->setIPBlocked()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/wikipedia/views/MessageCardView;


# direct methods
.method constructor <init>(Lorg/wikipedia/views/MessageCardView;)V
    .locals 0

    iput-object p1, p0, Lorg/wikipedia/views/MessageCardView$setIPBlocked$1;->this$0:Lorg/wikipedia/views/MessageCardView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    .line 77
    iget-object p1, p0, Lorg/wikipedia/views/MessageCardView$setIPBlocked$1;->this$0:Lorg/wikipedia/views/MessageCardView;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    iget-object v0, p0, Lorg/wikipedia/views/MessageCardView$setIPBlocked$1;->this$0:Lorg/wikipedia/views/MessageCardView;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f10007f

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-static {p1, v0}, Lorg/wikipedia/util/UriUtil;->visitInExternalBrowser(Landroid/content/Context;Landroid/net/Uri;)V

    return-void
.end method
