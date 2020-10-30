.class Lorg/wikipedia/login/LoginActivity_ViewBinding$3;
.super Lbutterknife/internal/DebouncingOnClickListener;
.source "LoginActivity_ViewBinding.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/wikipedia/login/LoginActivity_ViewBinding;-><init>(Lorg/wikipedia/login/LoginActivity;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/wikipedia/login/LoginActivity_ViewBinding;

.field final synthetic val$target:Lorg/wikipedia/login/LoginActivity;


# direct methods
.method constructor <init>(Lorg/wikipedia/login/LoginActivity_ViewBinding;Lorg/wikipedia/login/LoginActivity;)V
    .locals 0

    .line 63
    iput-object p1, p0, Lorg/wikipedia/login/LoginActivity_ViewBinding$3;->this$0:Lorg/wikipedia/login/LoginActivity_ViewBinding;

    iput-object p2, p0, Lorg/wikipedia/login/LoginActivity_ViewBinding$3;->val$target:Lorg/wikipedia/login/LoginActivity;

    invoke-direct {p0}, Lbutterknife/internal/DebouncingOnClickListener;-><init>()V

    return-void
.end method


# virtual methods
.method public doClick(Landroid/view/View;)V
    .locals 0

    .line 66
    iget-object p1, p0, Lorg/wikipedia/login/LoginActivity_ViewBinding$3;->val$target:Lorg/wikipedia/login/LoginActivity;

    invoke-virtual {p1}, Lorg/wikipedia/login/LoginActivity;->onPrivacyPolicyClick()V

    return-void
.end method
