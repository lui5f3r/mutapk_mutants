.class Lorg/wikipedia/settings/AboutActivity_ViewBinding$1;
.super Lbutterknife/internal/DebouncingOnClickListener;
.source "AboutActivity_ViewBinding.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/wikipedia/settings/AboutActivity_ViewBinding;-><init>(Lorg/wikipedia/settings/AboutActivity;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/wikipedia/settings/AboutActivity_ViewBinding;

.field final synthetic val$target:Lorg/wikipedia/settings/AboutActivity;


# direct methods
.method constructor <init>(Lorg/wikipedia/settings/AboutActivity_ViewBinding;Lorg/wikipedia/settings/AboutActivity;)V
    .locals 0

    .line 38
    iput-object p1, p0, Lorg/wikipedia/settings/AboutActivity_ViewBinding$1;->this$0:Lorg/wikipedia/settings/AboutActivity_ViewBinding;

    iput-object p2, p0, Lorg/wikipedia/settings/AboutActivity_ViewBinding$1;->val$target:Lorg/wikipedia/settings/AboutActivity;

    invoke-direct {p0}, Lbutterknife/internal/DebouncingOnClickListener;-><init>()V

    return-void
.end method


# virtual methods
.method public doClick(Landroid/view/View;)V
    .locals 1

    .line 41
    iget-object v0, p0, Lorg/wikipedia/settings/AboutActivity_ViewBinding$1;->val$target:Lorg/wikipedia/settings/AboutActivity;

    invoke-virtual {v0, p1}, Lorg/wikipedia/settings/AboutActivity;->onSendFeedbackClick(Landroid/view/View;)V

    return-void
.end method
