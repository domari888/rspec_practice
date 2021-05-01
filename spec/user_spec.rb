# テストの対象となるファイル(user.rb)を読み込むための記述
require_relative "../lib/user"

 # テストを実行するためのおきまりの書き方
RSpec.describe User do    
# テストの内容
  describe "Userクラスの情報" do        
# テストの期待値
    it "return user name" do            
# テスト対象となるUserクラスをオブジェクト化
      user = User.new(name: "Tanaka", age: 31, hobby: "Soccer")
# テストコード（名前が期待値と一致することを確認）
      expect(user.name).to eq "Tanaka"
    end
    it "return user age" do
      user = User.new(name: "Tanaka", age: 31, hobby: "Soccer")
      expect(user.age).to eq 31             # テストコード（年齢が期待値と一致することを確認）
    end
    it "return user hobby" do
      user = User.new(name: "Tanaka", age: 31, hobby: "Soccer")
      expect(user.hobby).to eq "Soccer"     # テストコード（趣味が期待値と一致することを確認）
    end
  end
end



# #beforeで共通の下準備--------------------------------------
# require_relative "../lib/user"

# RSpec.describe User do
#   describe "Userクラスの情報" do
#     context "名前がTanakaの場合" do
#       before do
#         @params = {name: "Tanaka", age: 31, hobby: "Soccer"}
#       end
#       it "return user name" do
#         user = User.new(@params)
#         expect(user.name).to eq "Tanaka"
#       end
#       it "return user age" do
#         user = User.new(@params)
#         expect(user.age).to eq 31
#       end
#       it "return user hobby" do
#         user = User.new(@params)
#         expect(user.hobby).to eq "Soccer"
#       end
#     end
#     context "名前がSuzukiの場合" do
#       before do
#         @params2 = {name: "Suzuki", age: 31, hobby: "Soccer"}
#       end
#       it "return user name" do
#         user = User.new(@params2)
#         expect(user.name).to eq "Suzuki"
#       end
#       it "return user age" do
#         user = User.new(@params2)
#         expect(user.age).to eq 31
#       end
#       it "return user hobby" do
#         user = User.new(@params2)
#         expect(user.hobby).to eq "Soccer"
#       end
#     end
#   end
# end




#letで@paramsを置き換え--------------------------------
# require_relative "../lib/user"

# RSpec.describe User do
#   describe "Userクラスの情報" do
#     # let(:params) {{name: "Tanaka", age: 31, hobby: "Soccer"}}
#     # let(:params2) {{name: "Suzuki", age: 31, hobby: "Soccer"}}
#     context "名前がTanakaの場合" do
#       # before do
#       #   @params = {name: "Tanaka", age: 31, hobby: "Soccer"}
#       # end
#       it "return user name" do
#         let(:params) {{name: "Tanaka", age: 31, hobby: "Soccer"}}
#         user = User.new(params)
#         expect(user.name).to eq "Tanaka"
#       end
#       it "return user age" do
#         let(:params) {{name: "Tanaka", age: 31, hobby: "Soccer"}}
#         user = User.new(params)
#         expect(user.age).to eq 31
#       end
#       it "return user hobby" do
#         let(:params) {{name: "Tanaka", age: 31, hobby: "Soccer"}}
#         user = User.new(params)
#         expect(user.hobby).to eq "Soccer"
#       end
#     end
#     context "名前がSuzukiの場合" do
#       # before do
#       #   @params2 = {name: "Suzuki", age: 31, hobby: "Soccer"}
#       # end
#       it "return user name" do
#         let(:params2) {{name: "Suzuki", age: 31, hobby: "Soccer"}}
#         user = User.new(params2)
#         expect(user.name).to eq "Suzuki"
#       end
#       it "return user age" do
#         let(:params2) {{name: "Suzuki", age: 31, hobby: "Soccer"}}
#         user = User.new(params2)
#         expect(user.age).to eq 31
#       end
#       it "return user hobby" do
#         let(:params2) {{name: "Suzuki", age: 31, hobby: "Soccer"}}
#         user = User.new(params2)
#         expect(user.hobby).to eq "Soccer"
#       end
#     end
#   end
# end




#  #before merge! -----------------------------
#  require_relative "../lib/user"

#  RSpec.describe User do
#    describe "Userクラスの情報" do
#      let(:params) {{age: 31, hobby: "Soccer"}}
#      context "名前がTanakaの場合" do
#        before do
#          params.merge!(name: "Tanaka")
#        end
#        it "return user name" do
#          user = User.new(params)
#          expect(user.name).to eq "Tanaka"
#        end
#        it "return user age" do
#          user = User.new(params)
#          expect(user.age).to eq 31
#        end
#        it "return user hobby" do
#          user = User.new(params)
#          expect(user.hobby).to eq "Soccer"
#        end
#      end
#      context "名前がSuzukiの場合" do
#        before do
#          params.merge!(name: "Suzuki")
#        end
#        it "return user name" do
#          user = User.new(params)
#          expect(user.name).to eq "Suzuki"
#        end
#        it "return user age" do
#          user = User.new(params)
#          expect(user.age).to eq 31
#        end
#        it "return user hobby" do
#          user = User.new(params)
#          expect(user.hobby).to eq "Soccer"
#        end
#      end
#    end
#  end




#  #Userクラスのインスタンス化の部分をletに置き換え-------------------
#  require_relative "../lib/user"

#  RSpec.describe User do
#    describe "Userクラスの情報" do
#      let(:user) {User.new(params)}
#      let(:params) {{age: 31, hobby: "Soccer"}}
#      context "名前がTanakaの場合" do
#        before do
#          params.merge!(name: "Tanaka")
#        end
#        it "return user name" do
#          expect(user.name).to eq "Tanaka"
#        end
#        it "return user age" do
#          expect(user,age).to eq 31
#        end
#        it "return user hobby" do
#          expect(user.hobby).to eq "Socer"
#        end
#      end
#      context "名前がSuzukiの場合" do
#        before do
#          params.merge!(name: "Suzuki")
#         end
#         it "return user name" do
#           expect(user.name).to eq "Suzuki"
#         end
#        it "return user age" do
#          expect(user.age).to eq 31
#        end
#        it "return user hobby" do
#          expect(user.hobby).to eq "Soccer"
#        end
#      end
#    end
#  end
