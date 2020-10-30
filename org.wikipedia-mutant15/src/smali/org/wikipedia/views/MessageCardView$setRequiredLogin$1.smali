.class final Lorg/wikipedia/views/MessageCardView$setRequiredLogin$1;
.super Ljava/lang/Object;
.source "MessageCardView.kt"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/wikipedia/views/MessageCardView;->setRequiredLogin(Landroidx/fragment/app/Fragment;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic $fragment:Landroidx/fragment/app/Fragment;

.field final synthetic this$0:Lorg/wikipedia/views/MessageCardView;


# direct methods
.method constructor <init>(Lorg/wikipedia/views/MessageCardView;Landroidx/fragment/app/Fragment;)V
    .locals 0

    iput-object p1, p0, Lorg/wikipedia/views/MessageCardView$setRequiredLogin$1;->this$0:Lorg/wikipedia/views/MessageCardView;

    iput-object p2, p0, Lorg/wikipedia/views/MessageCardView$setRequiredLogin$1;->$fragment:Landroidx/fragment/app/Fragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    .line 87
    iget-object p1, p0, Lorg/wikipedia/views/MessageCardView$setRequiredLogin$1;->$fragment:Landroidx/fragment/app/Fragment;

    iget-object v0, p0, Lorg/wikipedia/views/MessageCardView$setRequiredLogin$1;->this$0:Lorg/wikipedia/views/MessageCardView;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "suggestededits"

    invoke-static {v0, v1}, Lorg/wikipedia/login/LoginActivity;->newIntent(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const/16 v1, 0x35

    invoke-virtual {p1, v0, v1}, Landroidx/fragment/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method
