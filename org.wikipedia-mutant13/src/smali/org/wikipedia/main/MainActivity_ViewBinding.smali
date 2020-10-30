.class public Lorg/wikipedia/main/MainActivity_ViewBinding;
.super Ljava/lang/Object;
.source "MainActivity_ViewBinding.java"

# interfaces
.implements Lbutterknife/Unbinder;


# instance fields
.field private target:Lorg/wikipedia/main/MainActivity;


# direct methods
.method public constructor <init>(Lorg/wikipedia/main/MainActivity;)V
    .locals 1

    .line 21
    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lorg/wikipedia/main/MainActivity_ViewBinding;-><init>(Lorg/wikipedia/main/MainActivity;Landroid/view/View;)V

    return-void
.end method

.method public constructor <init>(Lorg/wikipedia/main/MainActivity;Landroid/view/View;)V
    .locals 3

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput-object p1, p0, Lorg/wikipedia/main/MainActivity_ViewBinding;->target:Lorg/wikipedia/main/MainActivity;

    .line 28
    const-class v0, Lorg/wikipedia/views/LinearLayoutTouchIntercept;

    const v1, 0x7f090210

    const-string v2, "field \'mainContainer\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/wikipedia/views/LinearLayoutTouchIntercept;

    iput-object v0, p1, Lorg/wikipedia/main/MainActivity;->mainContainer:Lorg/wikipedia/views/LinearLayoutTouchIntercept;

    .line 29
    const-class v0, Landroidx/appcompat/widget/Toolbar;

    const v1, 0x7f090394

    const-string v2, "field \'toolbar\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/Toolbar;

    iput-object v0, p1, Lorg/wikipedia/main/MainActivity;->toolbar:Landroidx/appcompat/widget/Toolbar;

    .line 30
    const-class v0, Landroid/widget/ImageView;

    const v1, 0x7f090395

    const-string v2, "field \'wordMark\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageView;

    iput-object p2, p1, Lorg/wikipedia/main/MainActivity;->wordMark:Landroid/widget/ImageView;

    return-void
.end method


# virtual methods
.method public unbind()V
    .locals 2

    .line 36
    iget-object v0, p0, Lorg/wikipedia/main/MainActivity_ViewBinding;->target:Lorg/wikipedia/main/MainActivity;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 38
    iput-object v1, p0, Lorg/wikipedia/main/MainActivity_ViewBinding;->target:Lorg/wikipedia/main/MainActivity;

    .line 40
    iput-object v1, v0, Lorg/wikipedia/main/MainActivity;->mainContainer:Lorg/wikipedia/views/LinearLayoutTouchIntercept;

    .line 41
    iput-object v1, v0, Lorg/wikipedia/main/MainActivity;->toolbar:Landroidx/appcompat/widget/Toolbar;

    .line 42
    iput-object v1, v0, Lorg/wikipedia/main/MainActivity;->wordMark:Landroid/widget/ImageView;

    return-void

    .line 37
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Bindings already cleared."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
