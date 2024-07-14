import { DeployFunction } from "hardhat-deploy/types";
import { HardhatRuntimeEnvironment } from "hardhat/types";

const func: DeployFunction = async function (hre: HardhatRuntimeEnvironment) {
  const { deployer } = await hre.getNamedAccounts();
  const { deploy } = hre.deployments;

  const pandoraContract = await deploy("Pandora", {
    from: deployer,
    args: [
      deployer,
    ],
  });

  console.log(`contract pandoraContract: `, pandoraContract.address);
};

func.id = "pandoraContract";
func.tags = ["PandoraContract"];

export default func;