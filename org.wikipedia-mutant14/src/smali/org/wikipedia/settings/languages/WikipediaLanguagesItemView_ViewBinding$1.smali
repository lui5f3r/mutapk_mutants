.class Lorg/wikipedia/settings/languages/WikipediaLanguagesItemView_ViewBinding$1;
.super Ljava/lang/Object;
.source "WikipediaLanguagesItemView_ViewBinding.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/wikipedia/settings/languages/WikipediaLanguagesItemView_ViewBinding;-><init>(Lorg/wikipedia/settings/languages/WikipediaLanguagesItemView;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/wikipedia/settings/languages/WikipediaLanguagesItemView_ViewBinding;

.field final synthetic val$target:Lorg/wikipedia/settings/languages/WikipediaLanguagesItemView;


# direct methods
.method constructor <init>(Lorg/wikipedia/settings/languages/WikipediaLanguagesItemView_ViewBinding;Lorg/wikipedia/settings/languages/WikipediaLanguagesItemView;)V
    .locals 0

    .line 38
    iput-object p1, p0, Lorg/wikipedia/settings/languages/WikipediaLanguagesItemView_ViewBinding$1;->this$0:Lorg/wikipedia/settings/languages/WikipediaLanguagesItemView_ViewBinding;

    iput-object p2, p0, Lorg/wikipedia/settings/languages/WikipediaLanguagesItemView_ViewBinding$1;->val$target:Lorg/wikipedia/settings/languages/WikipediaLanguagesItemView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 0

    .line 41
    iget-object p1, p0, Lorg/wikipedia/settings/languages/WikipediaLanguagesItemView_ViewBinding$1;->val$target:Lorg/wikipedia/settings/languages/WikipediaLanguagesItemView;

    invoke-virtual {p1}, Lorg/wikipedia/settings/languages/WikipediaLanguagesItemView;->onCheckedChanged()V

    return-void
.end method
