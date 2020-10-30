.class Lorg/wikipedia/views/LanguageScrollView_ViewBinding$1;
.super Lbutterknife/internal/DebouncingOnClickListener;
.source "LanguageScrollView_ViewBinding.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/wikipedia/views/LanguageScrollView_ViewBinding;-><init>(Lorg/wikipedia/views/LanguageScrollView;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/wikipedia/views/LanguageScrollView_ViewBinding;

.field final synthetic val$target:Lorg/wikipedia/views/LanguageScrollView;


# direct methods
.method constructor <init>(Lorg/wikipedia/views/LanguageScrollView_ViewBinding;Lorg/wikipedia/views/LanguageScrollView;)V
    .locals 0

    .line 33
    iput-object p1, p0, Lorg/wikipedia/views/LanguageScrollView_ViewBinding$1;->this$0:Lorg/wikipedia/views/LanguageScrollView_ViewBinding;

    iput-object p2, p0, Lorg/wikipedia/views/LanguageScrollView_ViewBinding$1;->val$target:Lorg/wikipedia/views/LanguageScrollView;

    invoke-direct {p0}, Lbutterknife/internal/DebouncingOnClickListener;-><init>()V

    return-void
.end method


# virtual methods
.method public doClick(Landroid/view/View;)V
    .locals 0

    .line 36
    iget-object p1, p0, Lorg/wikipedia/views/LanguageScrollView_ViewBinding$1;->val$target:Lorg/wikipedia/views/LanguageScrollView;

    invoke-virtual {p1}, Lorg/wikipedia/views/LanguageScrollView;->onLangButtonClick()V

    return-void
.end method
