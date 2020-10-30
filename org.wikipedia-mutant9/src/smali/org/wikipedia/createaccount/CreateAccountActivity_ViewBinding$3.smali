.class Lorg/wikipedia/createaccount/CreateAccountActivity_ViewBinding$3;
.super Lbutterknife/internal/DebouncingOnClickListener;
.source "CreateAccountActivity_ViewBinding.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/wikipedia/createaccount/CreateAccountActivity_ViewBinding;-><init>(Lorg/wikipedia/createaccount/CreateAccountActivity;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/wikipedia/createaccount/CreateAccountActivity_ViewBinding;

.field final synthetic val$target:Lorg/wikipedia/createaccount/CreateAccountActivity;


# direct methods
.method constructor <init>(Lorg/wikipedia/createaccount/CreateAccountActivity_ViewBinding;Lorg/wikipedia/createaccount/CreateAccountActivity;)V
    .locals 0

    .line 69
    iput-object p1, p0, Lorg/wikipedia/createaccount/CreateAccountActivity_ViewBinding$3;->this$0:Lorg/wikipedia/createaccount/CreateAccountActivity_ViewBinding;

    iput-object p2, p0, Lorg/wikipedia/createaccount/CreateAccountActivity_ViewBinding$3;->val$target:Lorg/wikipedia/createaccount/CreateAccountActivity;

    invoke-direct {p0}, Lbutterknife/internal/DebouncingOnClickListener;-><init>()V

    return-void
.end method


# virtual methods
.method public doClick(Landroid/view/View;)V
    .locals 0

    .line 72
    iget-object p1, p0, Lorg/wikipedia/createaccount/CreateAccountActivity_ViewBinding$3;->val$target:Lorg/wikipedia/createaccount/CreateAccountActivity;

    invoke-virtual {p1}, Lorg/wikipedia/createaccount/CreateAccountActivity;->onLoginClick()V

    return-void
.end method
